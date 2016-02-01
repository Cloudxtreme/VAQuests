sub EVENT_ENTER {
  $getmobid = quest::ChooseRandom(126345,126379);
  $getnumber = quest::ChooseRandom(1,2);
  if ($getmobid == 126345 && $getnumber == 2) {
    quest::spawn2(126345,0,0,$x,$y,$z,$h);
    quest::spawn2(126345,0,0,$x,$y,$z,$h);
  }
  elsif ($getmobid == 126379 && $getnumber == 2) {
    quest::spawn2(126379,0,0,$x,$y,$z,$h);
    quest::spawn2(126379,0,0,$x,$y,$z,$h);
  }
  elsif ($getmobid == 126345 && $getnumber == 1) {
    quest::spawn2(126345,0,0,$x,$y,$z,$h);
  }
  elsif ($getmobid == 126379 && $getnumber == 1) {
    quest::spawn2(126379,0,0,$x,$y,$z,$h);
  }
}

