# NPC: a_fisherman
#Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("Gutting a fish is one thing, but gutting an adventurer is real sport");
}

sub EVENT_DEATH_COMPLETE{
  plugin::DiaWind("No! The end comes too soon");
 }

# EOF zone: dulak