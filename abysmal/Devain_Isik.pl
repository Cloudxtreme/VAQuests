sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("Why are all you people coming into my room?  I can't even get any sleep!");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}