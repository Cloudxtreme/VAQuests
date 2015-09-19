#1000206 A_large_singular_Keg
#1000207 a_fairy
#1000208 Time_you_can_never_get_back
#1000209 An_untouched_bug
#1000210 Hopeless_raider
#1000215 EVENT coord

sub EVENT_SPAWN {

	quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);quest::addloot(132490, 1,0);}

sub EVENT_DEATH {

	quest::signalwith(1000215,1,0);
	plugin::Debug("signal - bug to control");
}