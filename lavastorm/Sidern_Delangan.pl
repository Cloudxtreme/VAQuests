sub EVENT_SAY {
  if($text=~/hail/i) {
    if(quest::istaskactivityactive(141,0)) {
      plugin::DiaWind("Thanks for contacting me, $name. Your information on this matter has been most useful.");
      quest::updatetaskactivity(141,0);
    }
    else {
      plugin::DiaWind("Hello, $name.");
    }
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}