# beginning of the arch lich rhag`zadune cycle
#
sub EVENT_SPAWN {
  quest::disable_spawn2(382989); # Despawn Rhag`Mozdezh
  quest::enable_spawn2(382990); # Despawn Arch Lich
}

sub EVENT_DEATH_COMPLETE {
  quest::enable_spawn2(382989); # Spawn Rhag`Mozdezh
}

# EOF zone: ssratemple ID: 162178 NPC: #Rhag`Zhezum

