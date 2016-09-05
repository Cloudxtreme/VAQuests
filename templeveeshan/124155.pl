sub EVENT_SPAWN {
  quest::signalwith(10,1,0);
  quest::spawn2(124021,0,0,-796,564,129,102);
  quest::spawn2(124021,0,0,-800,510,129,66);
  quest::spawn2(124021,0,0,-796,463,129,33);
  quest::spawn2(124080,0,0,-680,509,129,190);
  quest::spawn2(124080,0,0,-687,562,129,160);
  quest::spawn2(124080,0,0,-680,461,129,224);
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(10,2,0);
}
