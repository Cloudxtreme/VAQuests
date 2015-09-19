# NPC: a_dock_patrolman
#Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("The Broken Skull Clan is not to be underestimated!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("Your victory is meaningless");
 }

# whan pc dies, he says "What a shame, that one died so quickly"
# EOF zone: dulak