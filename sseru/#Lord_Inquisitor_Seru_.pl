sub EVENT_SPAWN {
  quest::settimer("leash",1);
}

sub EVENT_TIMER {
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  if($timer eq "leash"){
    if ($x < -353 || $x > -109 || $y < -549 || $y > -310) {
      quest::shout("No! I must not leave the time chamber! If I do, I'll age and die!");
      $npc->GMMove(-231.464005,-432.937469,202.375946,.125);
      quest::settimer("leash",1);
    }
  }
}

sub EVENT_DEATH_COMPLETE {
  quest::stoptimer(1);
}
