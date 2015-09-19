sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Get out of my face. I have no time for you.");
  }
}