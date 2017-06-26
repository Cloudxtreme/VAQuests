sub EVENT_SIGNAL {
	if($signal == 1) {
<<<<<<< HEAD
		#timer to spawn adds every 120 seconds
		quest::settimer("firestorm_portal_adds",120);
	} elsif($signal == 2) {
		#stop making adds
		quest::stoptimer("firestorm_portal_adds"); #stop spawning
	}
}

sub EVENT_TIMER {
	if($timer eq "firestorm_portal_adds") {
		#spawn A_firestorm_elemental_
=======
>>>>>>> 273540a460ef9bfb28dee440e6d145b7c41af2d6
		quest::spawn2(209118,0,0,$x,$y,$z,$h);
	}
}
