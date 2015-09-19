sub EVENT_SAY{
	if($text=~/hail/i){
		plugin::DiaWind("What do you want?");
		plugin::DiaWind(quest::saylink("I want to check my player leaderboards man!", 1));
	}
	if($text=~/leaderboards/i){
		plugin::DiaWind("Fine!");
	}
	# Plugin will match for 'player leaderboards' and display menu options, it will also respond to further saylinks
	plugin::LeaderBoardsMenu($text);
}