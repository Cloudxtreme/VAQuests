sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Welcome to the Twilight Sea!  This is the docking entrance to Katta Castellum. $name. Tell me do you know any songs?");
}
if($text=~/i know some songs/i){
plugin::DiaWind("Ah you do. You don't happen to be a bard do you?");
}
if($text=~/i am a bard/i){
plugin::DiaWind("Great. I have just what you need. Would you like to earn some armor?");
}
if($text=~/i would like to earn some armor/i){
plugin::DiaWind("I thought so I have a [helm], [breastplate], [vambraces], [greaves], [pauldrons], [bracer], and [boots]. For the rest speak to Brolan over there about armor.");
}
if($text=~/what breastplate/i){
plugin::DiaWind("For the breastplate you must bring me an astral jewel. a mark of music. a diamond studded medal. and a glorious flower.");
}
if($text=~/what vambracers/i){
plugin::DiaWind("For the vambraces you must bring me a sun jewel. a mark of entertainment. a sapphire studded medal. and velvet sleeves.");
}
if($text=~/what greaves/i){
plugin::DiaWind("For the greaves you must bring me a moon jewel. a mark of the drum. an emerald studded medal. and memory crystal.");
}
if($text=~/what pauldrons/i){
plugin::DiaWind("For the pauldrons you must bring me a star jewel. a mark of the mandolin. and an opal studded medal.");
}
if($text=~/what bracer/i){
plugin::DiaWind("For the bracer you must bring me a cloud jewel. a mark of song. and a pearl studded medal.");
}
if($text=~/what boots/i){
plugin::DiaWind("For the boots you must bring me a sky jewel. a mark of poetry. and a star ruby studded medal.");
}
if($text =~ /helm/i) {
plugin::DiaWind("For the helm you must bring me a meteor jewel, a mark of rhythm, a ruby studded medal, and a fancy necklace."); 
}
 }

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 5347 => 1, 4492 => 1, 5348=> 1)) {
    quest::summonitem(3909); #boots
    quest::emote("sings loudly as she hands you your reward");
    plugin::DiaWind("here, you have earned this");
    quest::exp(50000);
  }
  elsif (plugin::check_handin(\%itemcount, 5346 => 1, 5345 => 1, 4491 => 1)) {
    quest::summonitem(3908); #bracer
  }
  elsif (plugin::check_handin(\%itemcount, 4494 => 1, 5335 => 1, 5336 => 1, 5334 => 1)) {
    quest::summonitem(3898); #bp
  }
  elsif (plugin::check_handin(\%itemcount, 5431 => 1, 5340 => 1, 5342 => 1, 4489 => 1)) {
    quest::summonitem(3900); #greaves
  }
  elsif (plugin::check_handin(\%itemcount, 5343 => 1, 5344 => 1, 4490 => 1)) {
    quest::summonitem(3907); #pauldrons
  }
  elsif (plugin::check_handin(\%itemcount, 5337 => 1, 5338 => 1, 4488 => 1, 5339 => 1)) {
    quest::summonitem(3899); #vambs
  }
  elsif (plugin::check_handin(\%itemcount, 5330 => 1, 5328 => 1, 4493 => 1, 5329 => 1)) {
    quest::summonitem(3897); #helm
    
  }
  
}

#END of FILE Zone:twilight  ID:170134 -- Herald_Shelia_Gransith 

