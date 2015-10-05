#REVISED: Abernath
#Zone: Nexus_Antonica_Scion
sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Hello there. The spires are undergoing maintenance. If you need to know more about [" . quest::saylink("travel to Karana") . "], I can help you with this."); }
if ($text=~/travel to Karana/i){quest::movepc(13,1207.53,-3646.16,-7.49); }
}
#END of FILE Zone:nexus  ID:152005 -- Antonica_Scion
