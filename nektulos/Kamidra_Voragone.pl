sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("Hello, $name. I am so hungry, but I have much work to do. Do you think you can [help] me?"); #Text made up
  }
  if ($text=~/help/i) {
    plugin::DiaWind("Excellent."); #Text made up
    quest::taskselector(210); #Black Eggs for Breakfast
  }
}
  
sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13088 => 4) || plugin::check_handin(\%itemcount, 13088 => 3) || plugin::check_handin(\%itemcount, 13088 => 2) || plugin::check_handin(\%itemcount, 13088 => 1)) { #Snake Eggs
    plugin::DiaWind("Thank you. I am impressed!");
  }
  plugin::return_items(\%itemcount);
}