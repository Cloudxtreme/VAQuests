sub EVENT_SIGNAL {
	if ($signal==1) {
	plugin::DiaWind("Pleasant as always Verte. So what can I do for you today?");
	}
	if ($signal==2) {
	plugin::DiaWind("Ah I see, very well then here is your receipt. Good luck with the cleanup and keep those Dwarves in line!");
	}
	if ($signal==3) {
	plugin::DiaWind("Ok see you later Verte!");
	}
}

sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Greetings $name. how can I help you today?"); }
}
#END of FILE Zone:shadowhaven  ID:150286 -- Fordel_Keeper_Faloensar 

