sub EVENT_SPAWN {
  quest::settimer("VSCheck",10); #Cyclical Timer
}

sub EVENT_TIMER {
  if ($timer eq "VSCheck") {
    quest::disable_spawn2(102099);
  }
}
  
sub EVENT_DEATH_COMPLETE {
  quest::enable_spawn2(102099);
}
