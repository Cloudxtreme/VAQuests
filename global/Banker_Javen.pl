
sub EVENT_SPAWN {
	my $min = 10;
	quest::settimer("kill$mname", $min*60);
	plugin::DiaWind("$mname at your service, for $min minutes.");
}

sub EVENT_TIMER {
	plugin::DiaWind("Goodbye.");
	quest::depop_withtimer();
	quest::stoptimer("kill$mname");
}

sub EVENT_SAY {
	if($text =~ /bye/i) {
		plugin::DiaWind("Goodbye.");
		quest::depop_withtimer();
		quest::stoptimer("kill$mname");
	} elsif($text =~ /attack/i) {
		quest::attack($name);
	} else {
		plugin::DiaWind("Tell me 'bye' to make me go away.");
	}
}
