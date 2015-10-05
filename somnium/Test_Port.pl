##Test_Port.pl
#Zone: somnium

my $nexus = quest::saylink ("The Nexus",1);

sub EVENT_SAY{
  if ($text=~/Hail/i){
  plugin::DiaWind("Hello there, $name. If you need to travel to [" . $nexus . "] , I can transport you there");
  }
  if($text=~/nexus/i)
  {   
  quest::selfcast(2734);
  }
}
