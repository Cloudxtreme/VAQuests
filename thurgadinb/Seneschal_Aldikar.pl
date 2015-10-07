#my $x = npc->GetX();
#my $y = npc->GetY();
#my $z = npc->GetZ();
my $dainring
my $spawnvalue
#my $spawnvalue1 = quest::get_spawn_condition("thurgadinb",1);
#my $spawnvalue2 = quest::get_spawn_condition("thurgadinb",2);

sub EVENT_SIGNAL {
	if($signal==1) {
		quest::moveto(5,780,38,130,1);
	}
	if($signal==2) {
		quest::moveto(-3,693,69,126,1);
	}
}

#sub EVENT_SPAWN {
#}

sub EVENT_ENTER {
#  quest::settimer("thurgdaynight",5);
   $dainring = 0;
   $spawnvalue = quest::get_spawn_condition("thurgadinb",1);
#   $spawnvalue2 = quest::get_spawn_condition("thurgadinb",2);
}

sub EVENT_SAY{
  if($text=~/I will accept this task/i && $dainring==0){
    quest::say("In this box, place the accursed dirk of the fallen Rodrick. With it combine the heads of every traitor you dispose of. When this is done give the box and the velium insignia ring to the Dain directly. On behalf of the crown and all good Coldain, I thank you ... May Brell be with you.");
    quest::summonitem("17055"); 
    quest::settimer("thurgdaynight",5);
  }
  else {
    quest::say("No Dice!");
  }
}

sub EVENT_ITEM {
#  if(plugin::check_handin(\%itemcount, 30164 => 1) && $x == -3 && $y == 693 && $z == 68.5) {
  if(plugin::check_handin(\%itemcount, 30164 => 1) && $spawnvalue == 1) {
    quest::say("Well done %t, I have heard of your victory over the Ry'Gorr. If you are willing to assist the crown further please follow me.");
    quest::summonitem(30164);
    quest::stoptimer("thurgdaynight");
    quest::settimer(10,1);
  }
#  elsif(plugin::check_handin(\%itemcount, 30164 => 1) && $x == 5 && $y == 780 && $z == 38) {
  elsif(plugin::check_handin(\%itemcount, 30164 => 1) && $spawnvalue == 0) {
  #elsif(plugin::check_handin(\%itemcount, 30164 => 1) && $x == 5 && $y == 780 && $z == 38) {
    quest::say("I must speak to the Dain before I instruct you further. Please speak to me while the royal court is in session.");
    quest::summonitem(30164);
  }
  else {
    plugin::return_items(\%itemcount);
  }
}

sub EVENT_TIMER {
  elsif($timer == 10 && $x == 5 && $y == 780 && $z == 38) {
    quest::stoptimer(10);
    quest::pause(100);
    quest::say("Please, shut the door behind you. What I am about to share with you must not be overheard.");
    quest::settimer(11,10);
  }
  elsif($timer == 11) {
    quest::stoptimer(11);
    quest::say("My army stands prepared to launch an assault on Kael itself, but one task must be completed before this can happen.");
    quest::settimer(12,10);
  }
  elsif($timer == 12) {
    quest::stoptimer(12);
    quest::say("It seems Rodrick was not alone in his treachery. There is a faction of Coldain who believe that a treaty should be signed with the Kromrif, ending our hostilities with them. This, of course, is impossible. If there is one thing our history here has taught us it is that the Kromrif simply cannot be trusted.");
    quest::settimer(13);
  }
  elsif($timer == 13) {
    quest::stoptimer(13);
    quest::say("These traitors are poisoning the minds of our citizens, promising great rewards to those who will betry the Dain. It will take the unbiased eye of an outlander to flush out the masterminds behind this plan. Once again we turn to you.");
    quest::settimer(14);
  }
  elsif($timer == 14) {
    quest::stoptimer(14);
    quest::say("Will you accept this task outlander?");
    $dainring = 1;
  }
}

#END of FILE Zone:thurgadinb  ID:Not_Found -- Seneschal_Aldikar 
