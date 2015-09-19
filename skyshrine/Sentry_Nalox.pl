sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("I have no time to talk right now. I must keep watch for hostiles.");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:skyshrine  ID:Not_Found -- Sentry_Nalox