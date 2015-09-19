sub EVENT_SPAWN {
	quest::settimer(1,80);
	}
	
sub EVENT_TIMER {
	plugin::DiaWind("Hey there! Come take a look at my torches. It beats hunting in the dark. I have food and bandages.");
}


sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Hail wanderer. I have basic supplies available if you are interested. Have a look."); }
}
#END of FILE Zone:sharvahl  ID:155179 -- Gawra 

