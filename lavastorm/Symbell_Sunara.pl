sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Hello, $name.");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 13418 => 1)) {
    if(quest::istaskactivityactive(141,4)) {
      plugin::DiaWind("Ah, yes. Thank you.");
    }
    else {
      plugin::DiaWind("I have no use for this, $name.");
      quest::summonitem(13418);
    }
  }
  plugin::return_items(\%itemcount);
}