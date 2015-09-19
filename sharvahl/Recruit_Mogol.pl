sub EVENT_SIGNAL {
	if ($signal == 1) {
		plugin::DiaWind("Aye. Sir!");
		plugin::DoAnim("nodyes");
		quest::signalwith(155126,1,15);
	}
	if ($signal == 2) {
		plugin::DoAnim("bash");
		quest::signalwith(155126,2,15);
	}
}
