sub EVENT_SAY {
        if($text=~/hail/i){
		if ($client->IsSitting()){
			plugin::Debug("I'm sitting");
		}
#		plugin::Debug("$client->IsSitting()");
	}
}
