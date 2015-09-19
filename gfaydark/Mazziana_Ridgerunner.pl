sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("Hello, $name.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13791 => 4) || plugin::check_handin(\%itemcount, 13791 => 3) || plugin::check_handin(\%itemcount, 13791 => 2) || plugin::check_handin(\%itemcount, 13791 => 1)) { #Orc Scalp
    plugin::DiaWind("Ah, yes. Good work, thank you.");
  }
  plugin::return_items(\%itemcount);
}