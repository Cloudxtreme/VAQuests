# NPC: a_boat_engineer
#Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("Ya think yer tough?  Now you die");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("Ungh! I have one last request; bury me at sea!");
 }

# EOF zone: dulak