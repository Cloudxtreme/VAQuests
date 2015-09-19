##Translocator_Gethia.pl
#Zone: butcher

sub EVENT_SAY{
  if ($text=~/Hail/i){
  plugin::DiaWind("Hello there, $name. There seem to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [" . quest::saylink("travel to timorous deep") . "] in the meantime, I can transport you to my companion there.");
  }
  if($text=~/timorous deep/i)
  {
  plugin::DiaWind("Off you go!");
  quest::movepc(96,-3260.10,-4544.56,19.47);
  }
} 
