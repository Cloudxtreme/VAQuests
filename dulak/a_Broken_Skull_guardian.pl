# NPC: a_Broken_Skull_guardian
#Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("The likes of you offer no threat to the might of Broken Skull!");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("Guards! Get this one!");
 }

# whan pc dies, he says "What a shame, that one died so quickly"
# EOF zone: dulak