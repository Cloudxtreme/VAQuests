my $count = 0;

sub EVENT_SPAWN {
	quest::settimer("song",5);
}

sub EVENT_SIGNAL {
	plugin::DiaWind("Ack, I need somethin' light to clear the taste of salt from my mouth.");
}

sub EVENT_TIMER {
	$count++;
	if ($count == 1) {
		plugin::DiaWind("On one sunny afternoon, I sawr a dwarf a'wanderin'");
	}
	if ($count == 2) {
		plugin::DiaWind("He was staggerin' and mumblin' and fallin'.");
	}
	if ($count == 3) {
		plugin::DiaWind("I caught up and asked him if he needed help,");
	}
	if ($count == 4) {
		plugin::DiaWind("And he turned and yelled as loud as he's stout:");
	}
	if ($count == 5) {
		plugin::DiaWind("Git yer flowery songs from my ear,");
	}
	if ($count == 6) {
		plugin::DiaWind("The light notes will soil me beer!");
	}
	if ($count == 7) {
		plugin::DiaWind("And if ye don't turn and run fast,");
	}
	if ($count == 8) {
		plugin::DiaWind("I'll drown yer feet in what I ate last!");
		quest::settimer("song",300);
	}
	if ($count == 9) {
		plugin::DiaWind("Norrath is so great and so dear");
		quest::settimer("song",5);
	}
	if ($count == 10) {
		plugin::DiaWind("With all the folk that live here:");
	}
	if ($count == 11) {
		plugin::DiaWind("Dwarves make lots of ale");
	}
	if ($count == 12) {
		plugin::DiaWind("High elves are too pale");
	}
	if ($count == 13) {
		plugin::DiaWind("Trolls are slimy and green");
	}
	if ($count == 14) {
		plugin::DiaWind("Ogres are very unclean");
	}
	if ($count == 15) {
		plugin::DiaWind("Gnomes can make things tick");
	}
	if ($count == 16) {
		plugin::DiaWind("Halflings, masters of the trick");
	}
	if ($count == 17) {
		plugin::DiaWind("Iksar get by with scales");
	}
	if ($count == 18) {
		plugin::DiaWind("Vah Shir oft' use their tails");
	}
	if ($count == 19) {
		plugin::DiaWind("Humans are very plain");
	}
	if ($count == 20) {
		plugin::DiaWind("Dark elves deal out pain");
	}
	if ($count == 21) {
		plugin::DiaWind("Frogloks are smarter now");
	}
	if ($count == 22) {
		plugin::DiaWind("Erudites, the highest brow");
	}
	if ($count == 23) {
		plugin::DiaWind("Half elves have no city");
	}
	if ($count == 24) {
		plugin::DiaWind("Wood elves are so pretty");
	}
	if ($count == 25) {
		plugin::DiaWind("The last Norrathians I'm told");
	} 
	if ($count == 26) {
		plugin::DiaWind("Are barbarians who love the cold.");
	} 
	if ($count == 27) {
		plugin::DiaWind("All these folk share these lands,");
	} 
	if ($count == 28) {
		plugin::DiaWind("Putting it in very good hands.");
		quest::settimer("song",300);
	}
	if ($count == 29) {
		plugin::DiaWind("In the dark of the fearless night,");
		quest::settimer("song",5);
	}
	if ($count == 30) {
		plugin::DiaWind("Fantastic stories retold by torchlight.");
	}
	if ($count == 31) {
		plugin::DiaWind("A tale of a rogue of great prowess.");
	}
	if ($count == 32) {
		plugin::DiaWind("An enchanter as his revered mistress.");
	}
	if ($count == 33) {
		plugin::DiaWind("Then there's a shadow knight who found the two,");
	}
	if ($count == 34) {
		plugin::DiaWind("He swore to them he would always be true.");
	}
	if ($count == 35) {
		plugin::DiaWind("Some say they were brought together by chance,");
	}
	if ($count == 36) {
		plugin::DiaWind("Others think that it was circumstance.");
	}
	if ($count == 37) {
		plugin::DiaWind("No matter how they came to be the closest three,");
	}			
	if ($count == 38) {
		plugin::DiaWind("They are the greatest adventurers that will ever be.");
                quest::settimer("song",300);
        }
        if ($count == 39){
		plugin::DiaWind("Tra-la-la and a-diddly-dee.");
                quest::settimer("song",5);
        }
        if ($count == 40) {
                plugin::DiaWind("The gnome bit the ogre on the knee.");
        }
        if ($count == 41) {
                plugin::DiaWind("Tra-la-la and a-diddly-dum.");
        }
        if ($count == 42) {
                plugin::DiaWind("The ogre bit off the gnome's thumb.");
        }
        if ($count == 43) {
                plugin::DiaWind("Then the ogre said as he turned to me,");
        }
        if ($count == 44) {
                plugin::DiaWind("Dat fer singin' 'Tra-la-la and a-diddly-dee.'");
                quest::settimer("song",295);
        }
	if ($count == 45) {
		$count = 0;
		quest::settimer("song",5);
	}
}
