sub EVENT_SAY{
	if($text=~/hail/i){
quest::say("mysterious {bullet} Would you like to enter: <br> {in} {bullet} {y}Sanctum Somnium~?<br>
					{linebreak}<br>
					<table><tr><td>
					<tr><td>{in}</td><td>{gold}Expansion:~ 		</td><td>Visions of Morell</td>
					<tr><td>{in}</td><td>{gold}Tier:~ 			</td><td>Pre-Progression</td>
					<tr><td>{in}</td><td>{gold}Level Ranges:~	</td><td>90-190</td>
					</td></tr></table>
					{linebreak}<br>
					{in} {bullet} This expansion goes into the depths of the story between the {y}Thule Gods~ and their endless quarell over realms after the death of {r}Cazic Thule~
					popupid:60 wintype:1 nobracket noquotes");
}
}
