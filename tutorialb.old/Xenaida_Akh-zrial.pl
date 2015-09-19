sub EVENT_SPAWN
{
	quest::settimer("try_sit", 5);
}

sub EVENT_TIMER
{
	if($timer eq "try_sit")
	{
		$npc->SetAppearance(1);
	}
}

sub EVENT_DEATH_COMPLETE
{
	quest::stoptimer("try_sit");
}

sub EVENT_SAY {
   if ($text=~/hail/i){
     plugin::DiaWind("Greetings $name. I need some mushrooms to finish my healing potion for the wounded slaves. I marked the location of some mushrooms on your map. Can you bring one to me. I am rather busy here at the moment.");
   }
}

sub EVENT_ITEM {
   if (plugin::check_handin(\%itemcount, 59955 => 1) && quest::istaskactivityactive(22,3)) {
    plugin::DiaWind("Thanks! Very helpful!"); 
    quest::summonitem(59765);
    quest::updatetaskactivity(22,3);
  }
   elsif (plugin::check_handin(\%itemcount, 59955 => 1)) {
    plugin::DiaWind("Thanks! Very helpful!"); 
    quest::summonitem(59765);
  }
  plugin::return_items(\%itemcount);
}