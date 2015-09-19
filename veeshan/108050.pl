#Silverwing NPCID: 108050

sub EVENT_SAY {
	if ($text=~/Hail/i) {
		plugin::DiaWind("So, young one, you have come to seek an audience with me. What do you want? Hurry up and speak carefully. I'm not known for my patience or trust of your kind. Perhaps you can [" . quest::saylink("I will assist you",0,"assist") . "] me by collecting a few items, then I may learn to be more trusting.");
	} elsif ($text=~/I will assist you/i && $faction == 1) {
		plugin::DiaWind("Very well. One of my scouts has been attempting to acquire the locations of powerful, yet inscribable words for me, but has not returned as soon as I'd like. I've grown impatient -- as you might guess. These words contain great magic, I'm sure of it, and when incanted correctly, create a fabled spell of extraordinary power. I had obtained some, but more are missing. Here is my lexicon and a list of found words so far. Go quickly and acquire all eight of the words I need and the spell scroll.");
		quest::summonitem(69347);
		quest::summonitem(69323);    
	}
}
  
sub EVENT_ITEM {
	if ($faction == 1) {
		if (plugin::check_handin(\%itemcount, 69324 => 1)) {
			plugin::DiaWind("I'm somewhat impressed, stranger. You cannot imagine the power this spell may unleash. Take this reward and leave me. If the reward I have given you is not pleasing, hand it back and I will give you a different one. Make haste and leave me be, for I will need to recite this spell in private.");
			if ($class eq "Warrior") { quest::summonitem(69381);
			} elsif ($class eq "Berserker") { quest::summonitem(69381);
			} elsif ($class eq "Ranger") { quest::summonitem(69381);
			} elsif ($class eq "Bard") { quest::summonitem(69381);
			} elsif ($class eq "Rogue") { quest::summonitem(69381);
			} elsif ($class eq "Paladin") { quest::summonitem(69381);
			} elsif ($class eq "Shadowknight") { quest::summonitem(69381);
			} elsif ($class eq "Monk") { quest::summonitem(69381);
			} elsif ($class eq "Beastlord") { quest::summonitem(69381);
			} else { quest::summonitem(69382);
			}
			quest::exp(10000);
		}
        if (plugin::check_handin(\%itemcount, 69381 => 1)) {
			plugin::DiaWind("How utterly obtuse and arrogant. How about this one then?");
			quest::summonitem(69382);
		} elsif (plugin::check_handin(\%itemcount, 69382 => 1)) {
			plugin::DiaWind("How utterly obtuse and arrogant. How about this one then?");
			quest::summonitem(69381);      
		}
	}
    plugin::return_items(\%itemcount);
}