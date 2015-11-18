sub EVENT_CONNECT {
#    quest::settimer(1,30);
  if ($ulevel < 75 && $status > 80){
        plugin::DiaWind("Yawwnnn. Your name is {gold}$name~? Hrmm, I just can't {gold}remember anymore...~ {gray}I, I, I, ugh... what was it again...~
        Ah, yes strange one.  You wake me from my {lb}slumber~... wait what was it, {lb}who are you?~  I just want to {lb}remember~ [I can help you remember> +31+");
    }
    if($text=~/va/i){
        plugin::DiaWind("The dreams I {lb}used to have~, they were {y}wondeakkadiusrful~.  {lb}Dreams~ of {gold}mountains and skeletons~ and err...
        fire I..I...{gray}I just don't remember~.  Have you ventured into the {gold}angels tower and slept in their wonderful beds~?
        They are amazing but it has been ages since I was able to {lb}feel those beds~. 
        The {y}angels~ {r}banished me~ from the {lb} tower~ for my deeds, but alas, that is another {y}story~...
        Wait, I have a {y}wonderful idea~! {y}YES~!!! This idea is {lb}amazing~ and perhaps you would like to {lb}help~ me with it!!! [I will help you> +cheer+");
    }
    if($text=~/I will help/i){
        plugin::DiaWind("Yes... whoever you are, small being.  {lb}Sleep~ in each of those {lb}wonderful beds~ and fall into the dreams in which I try to remember. 
        Bring me back what you remember of the dreams and help {y}ME~ remember the days when I was able to sleep in those amazing beds, will yeh? 
        So what do you think?  {y}Are you willing to take on this~ {lb}task~? [I will take on this task for you> +shrug+");
    }
    if($text=~/I will take on this task/i){
        plugin::DiaWind("{y}Perfect~! Start now small one! I am going to try and sleep on this {gray}horrible bed~... +cheer+");
        quest::taskselector(190);
    }
}
#     {
#                quest::popup("Welcome to Vegarlson Asylum!", "Welcome to the Revolt! You have been given two new quests:
#                <br><br><c \"#FFFF00\">Rally with Rahtiz:</c><br>If you are ready to begin fighting for the revolt,
#                hail Guard Rahtiz and see where you are needed.<br><br><c \"#FFFF00\">Basic Training:</c><br>If you
#                would like more training on the finer points of Everquest, speak with Arias and he will direct you to other knowledgeable
#                members of the slave revolt.<br><br><c \"#F07F00\">Click 'OK' to continue.</c>");
#        }
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
                quest::enabletitle(7);
        }

# Journeyman Artisan		
        if ($client->GetRawSkill(60) > 199 && $client->GetRawSkill(61) > 199 && $client->GetRawSkill(63) > 199 && $client->GetRawSkill(68) > 199 && $client->GetRawSkill(65) > 199 && $client->GetRawSkill(69) > 199 && $client->GetRawSkill(64) > 199) {
                quest::enabletitle(8);
        }
		
# Expert Artisan		
        if ($client->GetRawSkill(60) > 249 && $client->GetRawSkill(61) > 249 && $client->GetRawSkill(63) > 249 && $client->GetRawSkill(68) > 249 && $client->GetRawSkill(65) > 249 && $client->GetRawSkill(69) > 249 && $client->GetRawSkill(64) > 249) {
                quest::enabletitle(9);
        }
}
