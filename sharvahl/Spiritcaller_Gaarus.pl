sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("May I assist you with something?");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:sharvahl  ID:Not_Found -- Spiritcaller_Gaarus