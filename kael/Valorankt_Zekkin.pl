sub EVENT_AGGRO {
  plugin::DiaWind("Your bones will be crushed by the Kromrif of Kael Drakkel!");
}

sub EVENT_DEATH_COMPLETE {
  quest::signal(113553,0);
}