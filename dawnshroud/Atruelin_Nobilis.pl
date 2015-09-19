sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Hello $name. What brings you here to [Dawnshroud]?");
}
if($text=~/I came to Dawnshroud to fight/i){
plugin::DiaWind("Dawnshroud is a crazy place. I suggest you travel with a good group here. it can get dangerous.'");
}
if($text=~/what dawnshroud/i){
plugin::DiaWind("Dawnshroud is a crazy place. I suggest you travel with a good group here. it can get dangerous.'"); }
}
#END of FILE Zone:dawnshroud  ID:174105 -- Atruelin_Nobilis 

