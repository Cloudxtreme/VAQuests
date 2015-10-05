#Chief Ry'Gorr for ring 8

sub EVENT_SPAWN {
  quest::say("Uhhh... I'm not feeling so good. Someone call for a cleric.");
  quest::settimer(1,5);
}

sub EVENT_TIMER {
  if($timer == 1) {
    quest::stoptimer(1);
    quest::doanim(16);
  }
}
