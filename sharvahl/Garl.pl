sub EVENT_SPAWN {
	quest::settimer(1,110);
}



sub EVENT_TIMER { 
	if ($timer == 1){
		my $random = int(rand(3));	
		if($random == 0){
			plugin::DiaWind("Hey! You! Come take a look at these shields. Not only will they prevent disfiguring scars, but they are great protection from the rain as well. I'll cut you a deal, come have a look."); 
			}
		if($random == 1){
			plugin::DiaWind("Hail traveler! Come take a look at my shields. They can save your life.");
			}
		if($random == 2){
			plugin::DiaWind("You there! Dare you venture out unprotected? It won't do you any harm to take one of my shields with you."); 
			}
	}	
}
