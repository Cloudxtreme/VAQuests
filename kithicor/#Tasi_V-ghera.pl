# Rogue Epic NPC -- #Tasi_V'ghera

sub EVENT_SAY {
  quest::emote("ignores you.");
}


sub EVENT_ITEM {

  if(plugin::check_handin(\%itemcount, 28057 => 1)) {

    plugin::DiaWind("The General will take care of you!");

    quest::ding();

    quest::exp(500);

    quest::spawn2(20205,0,0,2316,797,275,193.5);
 }

  plugin::return_items(\%itemcount);

}



#END of FILE  Quest by: Solid11  Zone:kithicor  ID:20063 -- #Tasi_V'ghera



