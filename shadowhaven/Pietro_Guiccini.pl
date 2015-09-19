sub EVENT_SAY { 
	if($text=~/Hail/i){
		plugin::DiaWind("Greetings! Have you ever seen my portraits? I am an artisan and collector of portraitures. If you are looking for a portrait, have one to sell, or wish to commission a piece of art I will be happy to take a look.");
	}
	if($text=~/portrait/i){
		plugin::DiaWind("I recently purchased a splendid antique portrait of a gorgeous lady that you may be interested in. It is a tad bit faded but a hauntingly beautiful and captivating piece none the less. I would be willing to part with it for 1000 gold pieces.");
	}
}

sub EVENT_ITEM {
	if(plugin::takeGold(1000)) {
		plugin::DiaWind("Here you are, you have made a marvelous purchase. I see that you have excellent taste.");
		quest::ding();
		quest::exp(1000);
		quest::summonitem(10676); # Faded Portrait of a Lady
	}
	else {
		plugin::DiaWind("I have no need for this $name. You can have it back");
		plugin::returnUnusedItems();
	}
}

