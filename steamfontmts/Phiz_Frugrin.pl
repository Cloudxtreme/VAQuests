sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Hello my friend. Good to meet you.");
  }
  if($text=~/lens/i) {
    plugin::DiaWind("Oh my. I have bad news. It was stolen by a dark elf rogue. She fled very quickly. My little legs could not keep up. Here. She dropped this. You must find her. Get it back. We have very few Lenses.");
    quest::summonitem(18867); # filthy towel
  }
}
#END of FILE Zone:steamfontmts  ID:448132 -- Phiz_Frugrin