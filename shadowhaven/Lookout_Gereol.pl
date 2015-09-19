sub EVENT_SIGNAL {
	plugin::DiaWind("All is going great sir, I will be sure to report any disturbances shall they present themselves.");
}

sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Hello there $name. Do you smell that? Man I sure am hungry and it smells like ol Joe is cooking up some fine steaks. Mmm. I sure hope I can leave soon and get some food."); }
}
#END of FILE Zone:shadowhaven  ID:150049 -- Lookout_Gereol 

