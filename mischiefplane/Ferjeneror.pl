sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 125 => 4)) {
    plugin::DiaWind("Thank you."); #made up
    quest::summonitem(17054);
    quest::exp(100);
  }
  if (plugin::check_handin(\%itemcount, 126 => 4)) {
    plugin::DiaWind("Thank you."); #made up
    quest::summonitem(17054);
    quest::exp(100);
  }
  if (plugin::check_handin(\%itemcount, 127 => 4)) {
    plugin::DiaWind("Thank you."); #made up
    quest::summonitem(17054);
    quest::exp(100);
  }
  if (plugin::check_handin(\%itemcount, 128 => 4)) {
    plugin::DiaWind("Thank you."); #made up
    quest::summonitem(17054);
    quest::exp(100);
  }
  if (plugin::check_handin(\%itemcount, 161 => 1)) {
    plugin::DiaWind("Thank you."); #made up
    quest::summonitem(17054);
    quest::exp(100);
  }
  plugin::return_items(\%itemcount);
} 