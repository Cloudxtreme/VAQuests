sub EVENT_AGGRO {
  quest::settimer("dt",1);
}

sub EVENT_TIMER {
  if ($timer eq "dt") {
    quest::stoptimer("dt");
    $npc->CastSpell(982, $ClientID);
    quest::settimer("dt",45);
  }
}

