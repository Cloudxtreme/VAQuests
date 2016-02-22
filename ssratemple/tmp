# #a_shissar_wraith
sub EVENT_SPAWN {
  quest::settimer("depop", 1800);
  quest::disable_spawn2(34138);
  quest::disable_spawn2(34139);
  quest::disable_spawn2(34140);
  quest::disable_spawn2(34141);
  quest::disable_spawn2(34142);
  quest::disable_spawn2(34143);
  quest::disable_spawn2(34144);
  quest::disable_spawn2(34145);
}

sub EVENT_TIMER {
  if ($timer eq "depop") {
    quest::stoptimer("depop");
    quest::depop();
  }
}
