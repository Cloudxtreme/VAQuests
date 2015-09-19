sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("We are busy here, please don't distract the troops. There is possibility of battle ahead and they must focus.");
  }
}
#END of FILE Zone:povalor  ID:208031 -- A_Squad_Leader