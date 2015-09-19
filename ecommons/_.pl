#1000206 A_large_singular_Keg
#1000207 a_fairy
#1000208 Time_you_can_never_get_back
#1000209 An_untouched_bug
#1000210 Hopeless_raider
#1000215 EVENT coord

sub EVENT_SPAWN {
	
	$npc->SetBodyType(11,0);
	plugin::Debug("Spawned, starting timers, add zone emote");
	quest::settimer("spawn_constants",1);
	
}



sub EVENT_SAY {

	if ($text=~/hail/i)
	{
	plugin::Debug("IT WORKS");
	}
}



sub EVENT_TIMER {

	if ($timer eq "spawn_constants")
	{
		quest::stoptimer("spawn_constants");
		quest::spawn2(1000206,0,0,847.93,-1076.43, -1.29, 255);
		quest::spawn2(1000207,0,0,825.22,-1079.84,-1.09,26);
		#quest::spawn2(1000208,0,0,847.85,-1118.05, -0.26,255);
		#quest::spawn2(1000210,0,0,847.74,-1111.5,-0.42,255);
	}
}

sub EVENT_SIGNAL {

if ($signal == 1)
	{
	$Death_Count++;
	plugin::Debug("Signal $signal Recieved and deathcount is $Death_Count");
		if ($Death_Count == 20)
		{
		#$npc->NPCSpecialAttacks("ABH",1);
		quest::signalwith(1000206,1,0);
		plugin::Debug("Signal control to keg");
		}
	}
}