#Usage: plugin::Debug("Message", Color, Mob);
# "Message" is a required field and is the message you want to show up in the debug
# Color is an optional field and if not set will default to a pink/purple color
# Mob is an optional field if you want to export a particular mob to debug from (used for getting the name)
# Example 1: plugin::Debug("Event Started", 7);
# Example 2: plugin::Debug("Event Started");

sub Debug {

	my $npc = plugin::val('$npc');
	my $client = plugin::val('$client');
	my $MyMessage = $_[0];
	my $TextColor = $_[1];
	if (!$TextColor)
	{
		$TextColor = 326;	#Set the Text Color for the Message (this one is bright purple)
	}
	my $Mob = $_[2];
	
	if (!$Mob)
	{
		if ($npc)
		{
			# NPC Quest
			$Mob = $npc;
		}
		elsif ($client)
		{
			# Player Quest
			$Mob = $client;
		}
	}
	my $MobName = "NO_NAME";
	if ($Mob) {
		#Get the clean name of the Mob sending the message
		$MobName = $Mob->GetCleanName();	
	}
	
	#Send a message in purple (default) to GMs in the Zone only
	quest::gmsay("$MobName Debugs: $MyMessage", $TextColor);	
}