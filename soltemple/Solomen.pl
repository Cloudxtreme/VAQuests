sub EVENT_SAY {
if($text=~/Hail/i){
plugin::DiaWind("Ah, I see you have found my study.  This is where I study and scribe the history of magic in Norrath.");
}
if($text=~/what history/i){
plugin::DiaWind("I have worked to chronicle everything from the beginnings of magic to what we consider the modern day of magic.  Solusek Ro has been very generous to those who wield magic in Norrath.  But throughout history there is one thing I have noticed - too much power corrupts the soul.  I have seen and documented that the strongest wizards and those closest to Solusek Ro become corrupted by their power.");
}
if($text=~/what wizards/i){
plugin::DiaWind("Unfortunately, I don't have time to speak of such things right now.  But I could use your help since you are here.  I have here an envelope that I need delivered to one Camin.  You can find him near the wizard tower in the city of Erudin.  He is a sage like myself whose knowledge rivals my own.  Do you [agree] to undertake my task?");
}
if($text=~/i agree/i){
plugin::DiaWind("Here you are, then.  Good luck on your journey.");
quest::summonitem("18088");
}
}
sub EVENT_ITEM {
	if($itemcount{14340} == 1){
		plugin::DiaWind("You actually did it! I never would have thought that anyone could have truly followed this path. This is a tribute to your intelligence and patience. Here, take this staff and know that you have made Solusek Ro and all the wizards of the world proud this day.");
		quest::summonitem(14341);
	} else {
		plugin::DiaWind("I don't need this.");
		if($item1 > 0){quest::summonitem("$item1");} 
		if($item2 > 0){quest::summonitem("$item2");} 
		if($item3 > 0){quest::summonitem("$item3");} 
		if($item4 > 0){quest::summonitem("$item4");}
		if($platinum != 0 || $gold !=0 || $silver != 0 || $copper != 0) {quest::givecash($copper, $silver, $gold, $platinum);}
	}
}

#END of FILE Zone:soltemple  ID:80023 -- Solomen 

