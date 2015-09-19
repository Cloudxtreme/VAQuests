sub EVENT_SAY {
  if ($text=~/ixthal sent me/i) {
    plugin::DiaWind("Oh, has he now? I can't return yet, I don't have the strength. If you were to [help] me I think I might be able to make it back though.");
  }
  if ($text=~/help/i) {
    plugin::DiaWind("Good. I have not eaten in a while so I will ask you to get me some Legion Lager and Noodles for my journey back.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 12463 => 1, 8175 => 1)) {
    plugin::DiaWind("You have returned with what I asked for. Here, take this note back to Ixthal and let him know I am safe and will be making the return trip soon.");
    quest::summonitem(48051);
  }
  plugin::return_items(\%itemcount);
}