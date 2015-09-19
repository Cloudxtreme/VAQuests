##Translocator_Fithop.pl
#Zone: butcher

sub EVENT_SAY{
  if ($text=~/Hail/i){
  plugin::DiaWind("Hello there, $name. There seem to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. If you need to [" . quest::saylink("travel to ocean of tears") . "] in the meantime, I can transport you to my companion there");
  }
  if($text=~/ocean of tears/i)
  {
  plugin::DiaWind("Off you go!");   
  quest::selfcast(2279);
  }
}
