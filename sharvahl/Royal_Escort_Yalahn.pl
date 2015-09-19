sub EVENT_WAYPOINT_ARRIVE {
	if($wp == 6) {
    plugin::DiaWind("Greetings honorable Sadhi. I ask for spiritual guidance to serve our king.");
	}
	if($wp == 17) {
    plugin::DiaWind("reporting for duty m'lord. I will defend Shar Vahl with your blessing.");
	$npc->SetAppearance(4);
	}
}
