sub EVENT_ATTACK {
  plugin::DiaWind("Grr... The piece is mine, snake! You'll not have it.");
  quest::depop_withtimer();
}