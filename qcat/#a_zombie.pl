sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 18804 => 1)) {
    plugin::DiaWind("Rele.. ase.. me.. from.. this.. tor.. ment.. ARGH! You will die for entering the domain of the Bloodsabers!! Karana.. help.. me?");
  }
  plugin::return_items(\%itemcount);
}

sub EVENT_DEATH_COMPLETE {
  plugin::DiaWind("ARGH!!!!!.. Thank.. you..");
}