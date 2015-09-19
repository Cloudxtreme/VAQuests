sub EVENT_SAY{
	if($text=~/hail/i){
#		plugin::DiaWind("Greetings, $name! We have recently started keeping track of player statistics here on Vegarlson Asylum. Take a look at the [" . quest::saylink("player leaderboards", 1) . "] and see where you stack up!");
#		plugin::DiaWind("Greetings, $name! We have recently started keeping track of player statistics here on Vegarlson Asylum. Take a look at the [player leaderboards] and see where you stack up!");
		plugin::DiaWind("{g}Greetings, $name! We have recently started keeping track of player statistics here on Vegarlson Asylum.~<br><br>

				{r}Please be aware that Hitpoints will be the only 100% reliable stat. Mana and AC will vary, as they take buffs into account.~<br><br>

				{g}If you would like to view the {lb}player leaderboards~ {g}, you've come to the right place!~ [player leaderboards>");
#		plugin::DiaWind(quest::saylink("View the player leaderboards", 1));
	}
	# Plugin will match for 'player leaderboards' and display menu options, it will also respond to further saylinks
	plugin::LeaderBoardsMenu($text); 
}
