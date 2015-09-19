sub EVENT_SAY {
  if($text=~/hail/i) {
   plugin::DiaWind("Hello, $name. Perhaps you are interested in helping me with a [task]?"); #Text made up
  }
  if($text=~/task/i) {
   quest::taskselector(150); #Of Bones and Beetles
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}