#Wicas_Adaolath.pl
#The Magic Pool


sub EVENT_SIGNAL {
  if($signal == 1) {
    plugin::DiaWind("Nothing at all. Do you think that he led us astray?");
  }
  if($signal == 2) {
    plugin::DiaWind("I think we should just do what [Tarerd] wants us to do.");
  }
}

sub EVENT_SAY {
	if ($text=~/tarerd/i) {
		plugin::DiaWind("Tarerd is the one who told us about these pools. He wanted us to kill some sort of lizards for him, but we have neither the time nor energy for such adventures. Perhaps you can get some information about the pools from him.");
	}
}
  
  
sub EVENT_ITEM { #Doesn't take any turn ins
  plugin::return_items(\%itemcount);
}

#Done