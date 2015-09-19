sub EVENT_SAY {
  if($text=~/hail/i) {
    plugin::DiaWind("Hail to ye as well offlander. I bid you welcome to the Icy Mug, one o' the finest establishments for a drink in Thurgadin. Whether it's [souvenirs] or stories yer lookin for, you've come to the right place.");
  }
  if($text=~/souvenirs/i) {
    plugin::DiaWind("Here at the Icy Mug we have our own signature stein fer yer drinkin pleasure. For only 5 gold pieces ye can take one home to show yer kinfolk.");
  }
}

sub EVENT_ITEM {
  if($gold == 5) {
    plugin::DiaWind("Here ya go!");
    quest::summonitem(30145); #The Icy Mug Souvenir Stein
  }
  plugin::return_items(\%itemcount);
}

sub EVENT_SIGNAL {
	if($signal==1) {
		plugin::DiaWind("What's the rush there, youngster?");
		quest::signalwith(115019,1);
	}
	if($signal==2) {
		plugin::DiaWind("That's not good, the Grand Historian's mighty protective of his daughter. What he do after he caught ya?");
		quest::signalwith(115019,2);
	}
	if($signal==3) {
		quest::signalwith(115019,3);
	}
	if($signal==4) {
		plugin::DiaWind("Well, coulda been worse. A month's worth of sermons is a far sight better than a trip to the bottom of the Dain's well.");
		quest::signalwith(115019,4);
	}
	if($signal==5) {
		plugin::DiaWind("Here ya go, Ronodun, on the house this time. Drink fast, don't need the Grand Historian to come lookin' fer ya...");
		quest::signalwith(115019,5);
	}
	if($signal==6) {
		plugin::DiaWind("My pleasure, son. You just remember to keep me in all those prayers you'll be sayin this month. Hahhahah!");
	}	
}

#END of FILE Zone:thurgadina  ID:Not_Found -- Petcas_Coldbeard