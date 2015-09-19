sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("I found a nice little hole in the wall and was able to form a bank vault from it. If youd like to store anything in there just let me know. OH and dont worry your items will transfer to any other bank you visit.");  
  }
}