sub EVENT_SAY {
  if(defined($qglobals{pov_key_quest}) && ($qglobals{pov_key_quest} == 1)) {
    if($text=~/aid the cause/i) {
      plugin::DiaWind("What could you possibly do to aid our cause. Perhaps you think you can slay [Aerin`Dar] himself?' The Master Sergeant begins to laugh uncontrollably. 'I suggest you go back to whoever filled your head with this nonsense and stop wasting my time.");
    }
    if($text=~/aerin`dar/i) {
      plugin::DiaWind("I don't have time to explain the glass dragon to you. Leave before I get angry.");
      quest::setglobal("pov_key_quest", 2, 5, "F");
    }
  }
  elsif(defined($qglobals{pov_key_quest}) && ($qglobals{pov_key_quest} == 3)) {
    if($text=~/hail/i) {
      plugin::DiaWind("I heard what you did for Paralin Notion. That's quite a noble feat indeed. Perhaps we can use your help. However, you'll need to talk to the Captain first. After all, I can't have you walking in the [glass lair] without permission.");
    }
    if($text=~/glass lair/i) {
      plugin::DiaWind("It's the prison that [Aerin`Dar] has been encased in for many generations.");
    }
    if($text=~/aerin`dar/i) {
      plugin::DiaWind("Aerin`Dar is the crystalline dragon who once roamed the Plane of Valor. During a severe rainstorm it was struck down to the very core of its being. The mighty Aerin`Dar fell from the sky and landed in what is now known as the Glassy Wasteland. Planarian larvae began to infest its body eventually turning its pure heart to evil. Our [company] was dispatched to this region of Valor to eliminate the threat.");
    }
    if($text=~/company/i) {
      plugin::DiaWind("My squad of men are a part of Che Virtuson. However, we specifically are a part of Ducee Buled. We fall under the command of Captain Ryglot. Our [mission], for the time being, is simple. But we've run into some problems lately.");
    }
    if($text=~/mission/i) {
      plugin::DiaWind("Not too fast $name. You'll have to speak to the Captain about that. I'm not at liberty to divulge that information at this time. That information is classified. I can tell you, but then I'd have to kill you.' Aaramis laughs. 'Go to Captain Ryglot and he'll be able to fill you in with all the details.");
      quest::setglobal("pov_key_quest", 4, 5, "F");
    }
  }
  elsif(defined($qglobals{pov_key_quest}) && ($qglobals{pov_key_quest} == 5)) {
    if($text=~/hail/i) {
      plugin::DiaWind("Good luck!");
    }
  }
  else {
    plugin::DiaWind("Not now soldier!");
  }
}