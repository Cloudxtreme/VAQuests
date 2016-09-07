sub EVENT_DEATH_COMPLETE {
	quest::signalwith(10,1,0);
	quest::setglobal("glyphed_dead",1,3,"D4");
}
