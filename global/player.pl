sub EVENT_ENTERZONE {
    quest::settimer(1,30);
}

sub EVENT_TIMER {
  if (defined($qglobals{antonica_port}) && defined($qglobals{nexus_ant})) {
    quest::selfcast(2708); #antonica
    quest::setglobal("nexus_ant",0,1,"S60");
    $nexus_ant = undef;
    $antonica_port = undef;
  }
  elsif (defined($qglobals{faydwer_port}) && defined($qglobals{nexus_fay})) {
    quest::selfcast(2706); #faydwer
    quest::setglobal("nexus_fay",0,1,"S60");
    $nexus_fay = undef;
    $qglobals{faydwer_port} = undef;
  }
  elsif (defined($qglobals{odus_port}) && !defined($qglobals{velious_port}) && defined($qglobals{nexus_vos})) {
    quest::selfcast(2707); #odus
    quest::setglobal("nexus_vos",0,1,"S60");
    $qglobals{nexus_vos} = undef;
    $qglobals{odus_port} = undef;
  }
  elsif (defined($qglobals{velious_port}) && !defined($qglobals{odus_port}) && defined($qglobals{nexus_vos})) {
    quest::selfcast(2062); #velious
    quest::setglobal("nexus_vos",0,1,"S60");
    $qglobals{nexus_vos} = undef;
    $qglobals{velious_port} = undef;
  }
  elsif (defined($qglobals{kunark_port}) && defined($qglobals{nexus_kun})) {
    quest::selfcast(2709); #kunark
    quest::setglobal("nexus_kun",0,1,"S60");
    $qglobals{nexus_kun} = undef;
    $qglobals{kunark_port} = undef;
  }
  elsif (defined($qglobals{velious_port}) && defined($qglobals{odus_port}) && defined($qglobals{nexus_vos})) {
    $client->Message(15,"The Odus and Velious port is very volatile, and often misplaces people. Feel lucky you ended up back here! You should be ported properly next cycle. We're sorry for the inconvenience!");
    quest::selfcast(2433); #unlikely but could happen. send to nexus.
    quest::setglobal("nexus_vos",0,1,"S60");
    $qglobals{nexus_vos} = undef;
    $qglobals{velious_port} = undef;
    $qglobals{odus_port} = undef;
  }
  $qglobals{nexus_ant} = undef;
  $qglobals{antonica_port} = undef;
  $qglobals{nexus_fay} = undef;
  $qglobals{faydwer_port} = undef;
  $qglobals{nexus_vos} = undef;
  $qglobals{odus_port} = undef;
  $qglobals{velious_port} = undef;
  $qglobals{nexus_kun} = undef;
  $qglobals{kunark_port} = undef;
}

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

sub EVENT_TSTITLE {
# Apprentice Artisan
        if ($client->GetRawSkill(60) > 99 && $client->GetRawSkill(61) > 99 && $client->GetRawSkill(63) > 99 && $client->GetRawSkill(68) > 99 && $client->GetRawSkill(65) > 99 && $client->GetRawSkill(69) > 99 && $client->GetRawSkill(64) > 99) {
                quest::enabletitle(7)
        }

# Journeyman Artisan		
        if ($client->GetRawSkill(60) > 199 && $client->GetRawSkill(61) > 199 && $client->GetRawSkill(63) > 199 && $client->GetRawSkill(68) > 199 && $client->GetRawSkill(65) > 199 && $client->GetRawSkill(69) > 199 && $client->GetRawSkill(64) > 199) {
                quest::enabletitle(8)
        }
		
# Expert Artisan		
        if ($client->GetRawSkill(60) > 249 && $client->GetRawSkill(61) > 249 && $client->GetRawSkill(63) > 249 && $client->GetRawSkill(68) > 249 && $client->GetRawSkill(65) > 249 && $client->GetRawSkill(69) > 249 && $client->GetRawSkill(64) > 249) {
                quest::enabletitle(9)
        }
}
