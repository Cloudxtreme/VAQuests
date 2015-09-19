#npc - Gfaydark Guard Protectors
#zone - Gfaydark
#by Angelox

sub EVENT_COMBAT {
   if($combat_state == 1) {
   plugin::DiaWind("Time to die $name.");
   }
}