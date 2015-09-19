sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Gimme duffynitey rocks! Me grindem GUUD!!!");
  }
}

sub EVENT_ITEM {
  if(plugin::check_handin(\%itemcount, 10073 => 1)) { #Dufrenite
    quest::emote("takes the dufrenite and grinds it with his bare hands.");
    plugin::DiaWind("Here ya go!");
    quest::summonitem(19051); #Ground Dufrenite
  }
  plugin::return_items(\%itemcount);
}
#END of FILE Zone:lakerathe  ID:51072 -- Punga