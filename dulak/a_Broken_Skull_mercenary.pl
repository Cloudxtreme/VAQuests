# NPC: a_Broken_Skull_mercenary
#Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("The likes of you offer no threat to the might of Broken Skull!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("'s corpse coughs and sputters as he collapses.");
 }

# whan pc dies, he says "What a shame, that one died so quickly"
# EOF zone: dulak