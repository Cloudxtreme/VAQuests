sub EVENT_SAY {
 if($text=~/hail/i){
  plugin::DiaWind("Come to serve the garrison? Good. I aim to offer a reward for the return of four froglok tad tongues. Best if we handle the pesky critters before they grow too big and too numerous.");
 }
}

sub EVENT_ITEM {
 #Handin: 4x Froglok Tad Tongues (12439)
 if(plugin::check_handin(\%itemcount, 12439 => 4)){
  plugin::DiaWind("Well done. It is good to serve the Warlord. Here is a small reward befitting such a small task.");
  quest::faction(193,5); # +Legion of Cabilis
  quest::faction(30,5); # +Cabilis Residents
  quest::faction(282,5); # +Scaled Mystics
  quest::faction(62,5); # +Crusaders of Greenmist
  quest::faction(317,5); # +Swifttails
  quest::givecash(6,0,0,0);
  quest::exp(10);  
 }
  plugin::return_items(\%itemcount);
}



#Scripted By: Fatty Beerbelly
