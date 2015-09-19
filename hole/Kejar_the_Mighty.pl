sub EVENT_SAY {#need correct text for all parts
  if ($text=~/hail/i) {
    plugin::DiaWind("I do not have time to talk to you, I am looking for something that I [lost]");
  }
  if ($text=~/lost/i) {
    plugin::DiaWind("Yes, lost.  I am missing my robes if you could bring them to me I would reward you.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount,  1360=> 1)) {
    plugin::DiaWind("You found it, I am so pleased! Here is your reward");
    quest::summonitem(quest::ChooseRandom(8960, 8961));
    quest::exp(5000);
  }
  plugin::return_items(\%itemcount);
}
