sub EVENT_SAY {
  if ($text=~/jungle city/i) {
    plugin::DiaWind("I've heard adventurers talk of a city deep in the jungles. They say the dead walk its streets. Many have claimed to discover great treasures there as well as to lose many friends. I also heard it may have a working brew barrel.");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:firiona  ID:84194 -- Samson