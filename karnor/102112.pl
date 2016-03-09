sub EVENT_SPAWN {
  quest::settimer("VSCheck",10); #Cyclical Timer
}

sub EVENT_TIMER {
  if ($timer eq "VSCheck") {
    quest::stoptimer("VSCheck");
    quest::depop(102099);
  }
}
  
sub EVENT_DEATH_COMPLETE {
  quest::spawn2(102099,0,0,-553,-77.0,15.0,192.0); ##Spawn Venril's remains
}
