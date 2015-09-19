#Created: Ender
#Zone: Droga Instance Porter
sub EVENT_SAY { 
if ($text=~/Hail/i){plugin::DiaWind("Greetings! I am Timebender Aale. Through years of research into the temporal rifts in this area, I am able to create a portal to the past. Would you like to see the [" . quest::saylink("past version") . "] of this zone?"); }
if ($text=~/past version/i){
quest::AssignToInstance(36);
quest::MovePCInstance(97, 36, 350.08, 1385.17, 3.75);
}
#END of FILE
