# beginning of the arch lich rhag`zadune cycle
#
sub EVENT_SPAWN {
  quest::disable_spawn2(382989); # Disable Rhag2
  quest::disable_spawn2(382990); # Disable Arch Lich
}

sub EVENT_DEATH_COMPLETE {
  quest::signalwith(10,4,1);
}

# EOF zone: ssratemple ID: 162178 NPC: #Rhag`Zhezum

