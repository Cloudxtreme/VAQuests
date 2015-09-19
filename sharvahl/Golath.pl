sub EVENT_SPAWN {
	quest::settimer(1,120);
}



sub EVENT_TIMER { 
	if ($timer == 1){
		my $random = int(rand(4));	
		if($random == 0){
			plugin::DiaWind("All that Bustle! Come relax and have yourself a meal."); 
			}
		if($random == 1){
			plugin::DiaWind("I have plenty of food and drink. You must be hungry with all that running about.");
			}
		if($random == 2){
			plugin::DiaWind("Over there! Come come, Try one of my many great dishes!"); 
			}
		if($random == 3){
			plugin::DiaWind("Treat yourself to a hot freshly baked moor fish pie! They're fresh!"); 
			}	
	}	
}



sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Greetings friend. Have a look at all this delicious food. If you have any questions about them just ask! That's what I'm here for."); }
}
#END of FILE Zone:sharvahl  ID:155196 -- Golath 

