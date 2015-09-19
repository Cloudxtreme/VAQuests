#1000206 A_large_singular_Keg
#1000207 a_fairy
#1000208 Time_you_can_never_get_back
#1000209 An_untouched_bug
#1000210 Hopeless_raider
#1000215 EVENT coord
# loot 132490


sub EVENT_SPAWN {
	
	quest::addloot(132490, 1,0);
	quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);
	quest::setnexthpevent(76);
	quest::we(13,"You sense the presence of something less than useful emanating from the East Commonlands tunnel,,,");
	#plugin::Debug("You sense the presence of something less than useful emanating from the East Commonlands tunnel,,,");
		
}

sub EVENT_SAY {

	if ($text =~/hail/i)
	{
	plugin::DiaWind("Not now, playing Minecraft");
	
	}
}

sub EVENT_SIGNAL {

	if ($signal == 1)
	{
	$npc->SetBodyType(1,0);
	#quest::sethp(75);
	}
	
	if ($signal == 2)
	{
	$npc->SetBodyType(1,0);
	#quest::sethp(50);
	}
	
	if ($signal == 3)
	{
	$npc->SetBodyType(1,0);
	#quest::sethp(25);
	}
}

sub EVENT_HP {

	if ($hpevent == 76)
	{
	$npc->SetBodyType(11, 0);
	quest::spawn2(1000209,0,0,$x+5,$y+5,$z,$h);
	quest::spawn2(1000209,0,0,$x-5,$y-5,$z,$h);
	quest::spawn2(1000209,0,0,$x+5,$y-5,$z,$h);
	quest::spawn2(1000209,0,0,$x-5,$y+5,$z,$h);
	quest::spawn2(1000209,0,0,$x+7.5,$y+7.5,$z,$h);
	quest::spawn2(1000209,0,0,$x-7.5,$y-7.5,$z,$h);
	quest::spawn2(1000209,0,0,$x+7.5,$y-7.5,$z,$h);
	quest::spawn2(1000209,0,0,$x-7.5,$y+7.5,$z,$h);
	quest::spawn2(1000209,0,0,$x+10,$y+10,$z,$h);
	quest::spawn2(1000209,0,0,$x-10,$y-10,$z,$h);
	quest::spawn2(1000209,0,0,$x+10,$y-10,$z,$h);
	quest::spawn2(1000209,0,0,$x-10,$y+10,$z,$h);
	quest::spawn2(1000209,0,0,$x+2.5,$y+2.5,$z,$h);
	quest::spawn2(1000209,0,0,$x-2.5,$y-2.5,$z,$h);
	quest::spawn2(1000209,0,0,$x+2.5,$y-2.5,$z,$h);
	quest::spawn2(1000209,0,0,$x-2.5,$y+2.5,$z,$h);
	quest::spawn2(1000209,0,0,$x+1,$y+1,$z,$h);
	quest::spawn2(1000209,0,0,$x-1,$y-1,$z,$h);
	quest::spawn2(1000209,0,0,$x+1,$y-1,$z,$h);
	quest::spawn2(1000209,0,0,$x-1,$y+1,$z,$h);
	quest::setnexthpevent(51);
	}
	
	if ($hpevent == 51)
	{
	$entity_list->MessageClose($npc, 1, 20000, 1, "you feel as if you are wasting your time");
	quest::spawn2(1000208,0,0,845.38,-1116.75,-0.28,0.0);
	quest::setnexthpevent(26);
	$npc->SetBodyType(11,0);
	}
	
	if ($hpevent == 26)
	{
	quest::spawn2(1000210,0,0,848.09,-1111.86,-0.41,0.0);
	}
}


sub EVENT_ATTACK {

	quest::emote("sits there and does nothing");
	plugin::Debug("attack signal");
	
}

sub EVENT_DEATH {

	quest::depop(1000206);
	quest::depop(1000207);
	quest::depop(1000208);
	quest::depop(1000209);
	quest::depop(1000210);
	quest::depop(1000215);
	quest::stopalltimers();
	quest::ze(13,"You suddenly feel the void inside you begin to fill with joy");
}