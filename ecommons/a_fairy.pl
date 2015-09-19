#1000206 A_large_singular_Keg
#1000207 a_fairy
#1000208 Time_you_can_never_get_back
#1000209 An_untouched_bug
#1000210 Hopeless_raider
#1000215 EVENT coord

sub EVENT_SPAWN {

	quest::settimer("massage", 30);
	$npc->SetBodyType(11,0);
	
}


sub EVENT_TIMER {

	if ($timer eq "massage")
	{
	quest::emote("massages the keg'z ego, but ultimately does nothing");
	}
} 

