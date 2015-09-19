###Usage: plugin::AddRandomCash(MinCash, MaxCash, [ AllowRepeatAdds, NPC ]);
# Adds a random amount of cash to the NPC based on the MinCash and MaxCash settings.
# All rewards are based on Copper amounts (1000 = 1 plat)
# AllowRepeatAdds will allow money to be added to the same NPC more than once if set to 1, or will block extra adds if left off (0)
# NPC is an optional field for setting a specific NPC to add cash to

sub AddRandomCash {

	my $npc = plugin::val('$npc');
	my $MinCash = $_[0];
	my $MaxCash = $_[1];
	my $AllowRepeatAdds = $_[2];
	my $SpecificNPC = $_[3];
	
	if ($SpecificNPC)
	{
		$npc = $SpecificNPC;
	}

	if (!$npc->EntityVariableExists(957) || $AllowRepeatAdds)
	{	
		$npc->SetEntityVariable(957, 1);
		my $CashReward = plugin::RandomRange($MinCash, $MaxCash);

		my $Plat = int($CashReward / 1000);
		my $Gold = int(($CashReward - ($Plat * 1000)) / 100);
		my $Silv = int(($CashReward - (($Plat * 1000) + ($Gold * 100))) / 10);
		my $Copp = $CashReward - (($Plat * 1000) + ($Gold * 100) + ($Silv * 10));
		#plugin::Debug("Random Cash: $CashReward, Plat $Plat, Gold $Gold, Silv $Silv, Copp $Copp");
		
		$npc->AddCash($Copp, $Silv, $Gold, $Plat);
		return $CashReward;
	}
	return 0;
}


###Usage: plugin::ScaleDropToGroup(item_id, Chance[1-100], Scale[1-100]=100, Group_Only=0, Max_Chance=100, Trivial=0);
# Drops an item X amount of times depending on how many clients are in the group.
# Chance is the overall chance for the item to drop
# Scale is the rate that the drop chance decreases to for each additional member (Diminishing return)
# Group_Only is an optional setting.  If 0, solo players will have a chance for this to drop.  If 1, only groups will have a chance for the drop.
# The Group Only option is primarily for adding an item that already exists in the NPC's loot table.
# Max_Chance option allows the chance range to be increased above the default 100.
# Setting Max_Chance to 1000 will make the chance roll from 1 to 1000 instead of 1 to 100 which allows drop rates less than 1%.
# Trivial can enable the trivial loot checks to restrict scaling drops to only groups who can earn experience from the kill (default is disabled 0).
# Example 1: plugin::ScaleDropToGroup(1001, 100, 80);
# This example gives the item a 100% chance to be added, but each additional member reduces that chance to 80% of the previous chance
# Example 2: plugin::ScaleDropToGroup(1001, 5, 80, 1);
# This example gives the item a 5% chance to be added, but each additional member reduces that chance to 80% of the previous chance
# Example 2 will not add the item if an ungrouped client is fighting the NPC.
# Example 3: plugin::ScaleDropToGroup(1001, 1, 100, 0, 500, 1);
# This example will give the item a 0.1% drop chance for each member in the group or for solo players, but only scales to the group if they can get exp from the kill

sub ScaleDropToGroup {
	my $npc = plugin::val('$npc');
	my $client = plugin::val('$client');
	my $userid = plugin::val('$userid');
	my $entity_list = plugin::val('$entity_list');
	my $item_id = $_[0];
	my $drop_chance = $_[1];	# Chance
	my $per_member_chance = $_[2];	# Scale
	my $group_only = $_[3];
	my $max_chance = $_[4];
	my $trivial = $_[5];

	# If the event was triggered by a pet, get the pet's owner as the client
	my $Attacker = $entity_list->GetMobByID($userid);
	my $Owner = 0;
	my $PetOwnerID = 0;
	my $SwarmOwnerID = 0;
	if ($Attacker && $Attacker->IsNPC())
	{
		$PetOwnerID = $Attacker->CastToNPC()->GetOwnerID();
		$SwarmOwnerID = $Attacker->CastToNPC()->GetSwarmOwner();
	}
	if ($PetOwnerID)
	{
		$Owner = $entity_list->GetClientByID($PetOwnerID);
	}
	if ($SwarmOwnerID)
	{
		$Owner = $entity_list->GetClientByID($SwarmOwnerID);
	}
	if ($Owner)
	{
		$client = $Owner;
	}

	if (!$max_chance) { $max_chance = 100; }
	if ($drop_chance > $max_chance) { $drop_chance = $max_chance; }
	if (!$per_member_chance) { $per_member_chance = 100; }

	my $Charge = 0;	
	my $Stack_Size = $npc->GetItemStat($item_id, "stacksize"); 
	my $Has_Charge = $npc->GetItemStat($item_id, "maxcharges"); 
	if ($Stack_Size >= 1) { $Charge = 1; }
	if ($Has_Charge >= 1) { $Charge = $Has_Charge; }

	#plugin::Debug("Starting Plugin");
	# Verify all of the required fields are set properly
	if ($drop_chance > 0 && $item_id)
	{
		if($client)	# Verify we got a client
		{
			my $ClientGroup = $client->GetGroup();	# Check if the client is in a group
			if ($ClientGroup)
			{
				#plugin::Debug("Got Group");
				my $GroupCount = $ClientGroup->GroupCount();	# Count the group members
				my $NPCLevel = $npc->GetLevel();
				my $HighLevel = $ClientGroup->GetHighestLevel();
				my $ExpMaxLevel = (($NPCLevel / 3) * 4);
				#plugin::Debug("Highest Level is $HighLevel - NPC Max Exp Level is $ExpMaxLevel");
				if (!$trivial || $HighLevel <= $ExpMaxLevel)
				{
					if ($GroupCount > 1)
					{
						# Create the variable that tracks the highest number of opponents this NPC has had since it spawned
						if (!$npc->EntityVariableExists($item_id))
						{	
							$npc->SetEntityVariable($item_id, 1);
						}
						my $DropTotal = $npc->GetEntityVariable($item_id);
						#plugin::Debug("Group Total $GroupCount, NPC Total $DropTotal");
						if ($GroupCount > $DropTotal)
						{
							# Save the highest number of opponents
							$npc->SetEntityVariable($item_id, $GroupCount);
							my $scale_rate = 100;
							#plugin::Debug("Scale Rate $scale_rate");
							# Run a loop to do the math and add loot
							my $StartCount = 1;
							if ($group_only)
							{
								$StartCount = 2;
							}
							for ($count = $StartCount; $count <= $GroupCount; $count++)
							{
								#plugin::Debug("Count $count");
								$scale_rate = $scale_rate * $per_member_chance / 100;
								if ($count > $DropTotal)
								{
									#plugin::Debug("Ready to roll to add the loot");
									my $ActualChance = $drop_chance * $scale_rate / $max_chance;
									my $RandomNum = plugin::RandomRange(1, $max_chance);
									#plugin::Debug("Actual Chance $ActualChance - Random Number $RandomNum");
									if ($ActualChance >= $RandomNum)
									{
										#plugin::Debug("Dropping $loottable with an actual chance of $ActualChance and group count of $GroupCount");
										$npc->AddItem($item_id, $Charge, 0);
										#plugin::Debug("Group Drop Added");
									}
								}
							}
						}
					}
				}
			}
			else	# No Group
			{
				if (!$group_only)
				{
					# Create the variable that tracks that this has been rolled for once already
					if (!$npc->EntityVariableExists($item_id))
					{	
						$npc->SetEntityVariable($item_id, 1);
						my $RandomNum = plugin::RandomRange(1, $max_chance);
						if ($drop_chance >= $RandomNum)
						{
							$npc->AddItem($item_id, $Charge, 0);
							#plugin::Debug("Solo Drop Added");
						}
					}
				}
			}
		}
		else	# No Client Attacking
		{
			if (!$group_only)
			{
				# Create the variable that tracks that this has been rolled for once already
				if (!$npc->EntityVariableExists($item_id))
				{	
					$npc->SetEntityVariable($item_id, 1);
					my $RandomNum = plugin::RandomRange(1, $max_chance);
					if ($drop_chance >= $RandomNum)
					{
						$npc->AddItem($item_id, $Charge, 0);
						#plugin::Debug("Solo Drop Added");
					}
				}
			}
		}
	}
}