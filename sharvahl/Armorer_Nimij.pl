sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Are you looking for something special, friend?");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:sharvahl  ID:Not_Found -- Armorer_Nimij