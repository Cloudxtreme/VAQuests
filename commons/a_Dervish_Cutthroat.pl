sub EVENT_COMBAT {
	my $NPCRace = $npc->GetRace();
	if($combat_state == 1){
		if($NPCRace==54){
			plugin::DiaWind("Orc stomp, orc kill - orc weapons, your blood will spill.");
		}
		else {
			plugin::DiaWind("Time to die $name!");
		}
	}
}
