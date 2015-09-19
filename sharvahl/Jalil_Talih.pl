

sub EVENT_SAY { 
  if ($text=~/hail/i) {
    plugin::DiaWind("Oh, hello there $name. Thank you for stopping by, but this is just not a very good time for visitors. My daughter is very upset over what has happened.");
  }
  if ($text=~/happened/i) {
    plugin::DiaWind("Oh my, I thought everyone had heard by now. Behari has gone missing. Been quite some time now, in fact. Even the king had gotten involved in the search for him, but...");
    quest::emote("lowers his voice to a whisper so as not to upset his daughter.");
    plugin::DiaWind("Everyone has about given up hope. Soroush was the last we know of that had seen him, but he had very little helpful information.");
  }
  if ($text=~/soroush/i) {
    plugin::DiaWind("Soroush has taken over Behari's duties... temporarily, at least. He can usually be found right in the throne room in case he is needed.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 5996 => 1)) {
    plugin::DiaWind("Ah this was my wife Aisha's locket. She had given it to Kalila. Thanks so much for returning it. Here take this belt as my thanks.");
    quest::summonitem(5995);
  }
  plugin::return_items(\%itemcount);
}

#END of FILE Zone:sharvahl  ID:155090 -- Jalil_Talih