sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("What!!? You [Craknek] or you [pest]?");
  }
  if ($text=~/craknek/i) {
    plugin::DiaWind("Good. Me not bash you. You help Horgus and Crakneks. Go smash lizards. Bring four tails. Greenbloods think they get all lizard tails. We take first. Taste good. You bring four tails. Me give you tings. Me gives armur. Now go!!");
  }
  if ($text=~/pest/i) {
    plugin::DiaWind("Bah!! You go join Greenbloods. You weak.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13354 => 4)) {
    plugin::DiaWind("You smash lizards good. Here is armur me promise.");
    quest::summonitem(quest::ChooseRandom(2136,2135,2132,2128,2130));
  }
  #do all other handins first with plugin, then let it do disciplines
  plugin::try_tome_handins(\%itemcount, $class, 'Warrior');
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:oggok  ID:49042 -- Horgus