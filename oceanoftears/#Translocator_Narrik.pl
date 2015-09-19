sub EVENT_SAY { 
if ($text=~/Hail/i){plugin::DiaWind("Hello there. There seems to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [" . quest::saylink("travel to freeport") . "] or [" . quest::saylink("travel to butcherblock") . "] in the meantime, I can transport you to my companion there."); }
if ($text=~/travel to freeport/i){quest::selfcast("2283"); }
if ($text=~/travel to butcherblock/i){quest::selfcast("2281"); } 
} 