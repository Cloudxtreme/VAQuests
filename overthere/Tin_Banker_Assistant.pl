# Tin Banker Assistant

# receives A Metal Key for Necro Skull Cap 5

# obtain A Dusty Tome (55978)



sub EVENT_SAY {

  if ($text=~/hail/i) {

    plugin::DiaWind("Insert Metal Key *whirrrr*."); 

  }

}



sub EVENT_ITEM {

  if ($itemcount{12849}==1) {

    plugin::DiaWind("*Whirrrr*");

    quest::summonitem(55978);

  }

}

# END of FILE zone:overthere ID: 93151 -- Tin_Banker_Assistant.pl