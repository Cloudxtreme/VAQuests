sub EVENT_SIGNAL {
	if ($signal == 1) {
	plugin::DiaWind("I need to update our king on the progress of your attempts to acquire the mines. What should I tell him?");
	}
	if ($signal == 2) {
	plugin::DiaWind("I understand the condition of the areas that you mentioned. My question  was related to the mines. In what state are our efforts to control the acrylia mines? I need accurate information on our progress in that area!");
	}
	if ($signal == 3) {
	plugin::DiaWind("I cannot speak on that matter at this time.");
	}
}
