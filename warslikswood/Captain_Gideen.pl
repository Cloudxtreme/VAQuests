sub EVENT_SAY {
 if($text=~/hail/i){
  plugin::DiaWind("I hope you have come to assist in the defense of the gate. We have had numerous assaults by the goblins. No doubt it is due to those [goblin watchers].");
 }
 elsif($text=~/goblin watchers/i){
  plugin::DiaWind("Goblin Watchers are rumored to be the communication link between goblin outposts and patrols. We have found Goblin Watcher Signal Torches on a few of them. You bring me back no less than three and I will reward you.");
 }
}

sub EVENT_ITEM {
 #Handin: 3x Watcher Signal Torch (12441)
 if(plugin::check_handin(\%itemcount, 12441 => 3)){
  plugin::DiaWind("Good work, $name. You are on your way to becoming a respected ally of the Iksar Empire. Keep up the good work. Take this reward for a job well done.");
  quest::faction(193,5); # +Legion of Cabilis
  quest::faction(30,5); # +Cabilis Residents
  quest::faction(282,5); # +Scaled Mystics
  quest::faction(62,5); # +Crusaders of Greenmist
  quest::faction(317,5); # +Swifttails
  quest::givecash(0,3,0,0);
  quest::exp(10);  
 }
 plugin::return_items(\%itemcount);
}
#Scripted By: Fatty Beerbelly