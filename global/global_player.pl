sub EVENT_CLICKDOOR{
    if($status > 200){
        plugin::Doors_Manipulation_EVENT_CLICKDOOR(); # Door Manipulation Plugin
    }
}
 
sub EVENT_SAY{
    if($status > 200){
        plugin::Doors_Manipulation_EVENT_SAY(); # Door Manipulation Plugin
    }
}
#	if ($text=~/#iteminfo/i) {
#		if ($client->GetItemAt(30)) {
#			$client->SendWebLink(""http://everquest.allakhazam.com/db/item.html?item="" . $client->GetItemIDAt(30));
#		}
#	} elsif ($text=~/#npcinfo/i) {
#		if ($client->GetTarget() && $client->GetTarget()->IsNPC()) {
#			$client->SendWebLink("http://everquest.allakhazam.com/db/npc.html?id=" . $client->GetTarget()->GetNPCTypeID());
#		}
#	} elsif ($text=~/#playerinfo/i) {
#		if ($client->GetTarget() && $client->GetTarget()->IsClient()) {
#			$client->SendWebLink("http://va.bladesofwrath.org/magelo-clone/character.php?char=" . $client->GetTarget()->GetCleanName());
#		}
#	}
#}
sub EVENT_CONNECT {
    if($ulevel < 11){
        quest::settimer("999",10);
    }
}

sub EVENT_ENTERZONE {
    plugin::LeaderBoardsUpdate();
    my %h = (7 => 99,
    8 => 199,
    9 => 249,
    10 => 299);
    foreach my $key (keys %h) {
        if (CheckSkills($client, $h{$key})) {
            quest::enabletitle($key);
        }
    }
#	plugin::ManaCalc();
# Apprentice Artisan
#        if ($client->GetRawSkill(60) > 99 && $client->GetRawSkill(61) > 99 && $client->GetRawSkill(63) > 99 && $client->GetRawSkill(68) > 99 && $client->GetRawSkill(65) > 99 && $client->GetRawSkill(69) > 99 && $client->GetRawSkill(64) > 99) {
#                quest::removetitle(7);
#        }

# Journeyman Artisan
#        if ($client->GetRawSkill(60) > 199 && $client->GetRawSkill(61) > 199 && $client->GetRawSkill(63) > 199 && $client->GetRawSkill(68) > 199 && $client->GetRawSkill(65) > 199 && $client->GetRawSkill(69) > 199 && $client->GetRawSkill(64) > 199) {
#                quest::removetitle(8);
#        }
#
## Expert Artisan
#        if ($client->GetRawSkill(60) > 249 && $client->GetRawSkill(61) > 249 && $client->GetRawSkill(63) > 249 && $client->GetRawSkill(68) > 249 && $client->GetRawSkill(65) > 249 && $client->GetRawSkill(69) > 249 && $client->GetRawSkill(64) > 249) {
#                quest::removetitle(9);
#        }

# Master Artisan
#        if ($client->GetRawSkill(60) > 299 && $client->GetRawSkill(61) > 299 && $client->GetRawSkill(63) > 299 && $client->GetRawSkill(68) > 299 && $client->GetRawSkill(65) > 299 && $client->GetRawSkill(69) > 299 && $client->GetRawSkill(64) > 299) {
#		quest::removetitle(10);	
#    }
}

sub CheckSkills {
    my $client = shift;
    my $skill_level = shift;
    foreach my $skill (60, 61, 63, 64, 65, 68, 69) {
        if ($client->GetRawSkill($skill) <= $skill_level) {
            return 0;
        }
    }
    return 1;
}

sub EVENT_TIMER {
  if ($timer eq "999") {
  quest::stoptimer("999");
    if ($ulevel < 11){
          plugin::DiaWind("mysterious Hello there, {g}$name~!<br>
          Please check out our forums @ {r}http://www.vegarlson-server.org/~ for full server information as well as to report any issues!
          {linebreak}<br>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{g}Current expansion is Luclin~ - Future expansions are planned through PoP, LoY and LDoN.</td>
                <tr><td>{bullet}</td><td>{g}Client Support~ - RoF2 client required. {r}(See MoTD)~</td>
                <tr><td>{bullet}</td><td>{g}4-box limit~ - An additional, locked account can be used for a Bazaar trader.</td>
                <tr><td>{bullet}</td><td>{g}Bots enabled~ - 2 per client allowed active (10 total per character). Use {lb}#bot help {gold}~ for information.</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{y}Many zones have been modified in one way or another. Some information about them:</td>
                <tr><td>{bullet}</td><td>{orange}Classic zone versions:</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{in}{bullet}</td><td>{gold}The Arena</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Bazaar</td>
                <tr><td>{in}{bullet}</td><td>{gold}Cazic Thule</td>
                <tr><td>{in}{bullet}</td><td>{gold}Temple of Droga</td>
                <tr><td>{in}{bullet}</td><td>{gold}Mines of Nurga</td>
                <tr><td>{in}{bullet}</td><td>{gold}Lair of the Splitpaw</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Plane of Hate</td>
                <tr><td>{in}{bullet}</td><td>{gold}Sirens Grotto</td>
                <tr><td>{in}{bullet}</td><td>{gold}Skyshrine</td>
                <tr><td>{in}{bullet}</td><td>{gold}The Western Wastes</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{bullet}</td><td>{orange}New zone versions:</td>
                </td></tr></table>
                <table><tr><td>
                <tr><td>{in}{bullet}</td><td>{gold}The Commonlands</td>
                <tr><td>{in}{bullet}</td><td>{gold}Highpass Hold</td>
                <tr><td>{in}{bullet}</td><td>{gold}Nektulos Forest</td>
                <tr><td>{in}{bullet}</td><td>{gold}Toxxulia Forest</td>
                </td></tr></table>
          {linebreak}");
    }
  }
}

sub EVENT_POPUPRESPONSE{
    #::: quest::say response subroutine
    quest::say_Process_Response();
}
