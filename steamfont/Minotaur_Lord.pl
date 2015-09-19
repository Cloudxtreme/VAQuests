#NPC: Minotaur_Lord   Zone: steamfont

sub EVENT_AGGRO{
    plugin::DiaWind("I survived the gladiator pens of Qeynos!! What can you do to one such as I?!!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("I die soon! Meldrath, help me!");
}
