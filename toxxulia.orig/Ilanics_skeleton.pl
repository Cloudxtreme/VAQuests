# Ilanic's Scroll

sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("My scroll must find my [scroll] so I may finish my research.");
  }
  if($text=~/scroll/i) {
    plugin::DiaWind("Kobold! Kobold!");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:toxxulia  ID:Not in toxxulia yet --  Ilanics_skeleton