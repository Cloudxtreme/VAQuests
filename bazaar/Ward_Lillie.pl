sub EVENT_SAY {
   if($text=~/hail/i) {
        plugin::LeaderBoardsUpdate();
   }
}
