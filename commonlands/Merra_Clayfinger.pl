#All text made up until we can get it from Live

sub EVENT_SAY {
  if(($ulevel >= 20) && ($ulevel <= 30)) {
    if($text=~/hail/i) {
      plugin::DiaWind("Hello, $name. If you are not too busy, I may have a [task] or two for you...");
    }
    if($text=~/task/i) {
      plugin::DiaWind("Are you interested in [exploring the area] or would you like to help me look for something [more interesting]?");
    }
    if($text=~/exploring the area/i) {
      plugin::DiaWind("Excellent! I thought you might be the exploring kind...");
      quest::taskselector(140); #Task: Bringing Books to the Plains
    }
    if($text=~/more interesting/i) {
      plugin::DiaWind("Ah, what a brave soul you are!");
      quest::taskselector(139); #Task: By the Stones
    }
  }
  else {
    plugin::DiaWind("Sorry, $name. I am quite busy... Unless you are looking for something to buy.");
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}
