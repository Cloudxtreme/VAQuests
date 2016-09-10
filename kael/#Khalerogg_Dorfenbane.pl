sub EVENT_AGGRO {
  quest::say("Your bones will be crushed by the Kromrif of Kael Drakkel! Sir!");
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(113553,1);
}
