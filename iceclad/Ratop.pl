sub EVENT_SIGNAL {
  if ($signal == 1) {
    plugin::DiaWind("Squawk! Pieces of eight! Pieces of eight!");

    my $mobid = $entity_list->GetMobByNpcTypeID(110053);
    if ($mobid) {
      my $mobnpc = $mobid->CastToNPC();
      $mobnpc->SignalNPC(1);
    }
    else {
      my $mobid = quest::spawn2(110053, 0, 0, $x+9, $y+1, $z, $h);
      my $mob = $entity_list->GetMobID($mobid);
      my $mobnpc = $mob->CastToNPC();
      $mobnpc->SignalNPC(1);
    }
  }
  if ($signal == 2) {
    plugin::DiaWind("We be out. You'll be needin to make more. Arg!");
  }
    # shawl signal
  if ($signal == 101) {
    plugin::DiaWind("Yar ye scruvy bearded dwarf, just over tha hill there.");
    quest::signalwith(110053,101,5); # signal Ritap
  } 
}

# Quest by mystic414