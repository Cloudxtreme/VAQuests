#NPC: Minotaur_Hero   Zone: steamfontmts

sub EVENT_COMBAT {
  if($combat_state == 1){
    plugin::DiaWind("<Snort!!>.. For Meldrath!!");
  }
}

sub EVENT_DEATH_COMPLETE {
  plugin::DiaWind("I die soon! Meldrath, help me!");
}