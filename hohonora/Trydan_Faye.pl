sub EVENT_SAY {
		if($text=~/Hail/i) {
			plugin::DiaWind("Weakling! How dare you approach me.  Access to Lord Marrs temple is reserved only for the honorable!  You will never be [ready]...");
		}

		if($text=~/ready/) {
			plugin::DiaWind("Be warned, $name, if you believe you are ready, you will fail, even if you can kill Lord Marrs servants!");
			quest::spawn2(211075,0,0,$x,$y,$z,$h); #Ryda`Dar
			quest::depop_withtimer();
		}
}