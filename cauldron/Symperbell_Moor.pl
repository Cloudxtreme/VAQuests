#BeginFile: cauldron\Symperbell_Moor.pl (70070)
#Quest file for Dagnor's Cauldron - Symperbell Moor: Beetles of the Estate

sub EVENT_SAY {
  if($text=~/hail/i) {
    if(quest::istaskactivityactive(15,0)) {
      plugin::DiaWind("Wonderful, $name! I am happy that someone is willing to help. Go to the manor in the Estate of Unrest. I have a suspicion that some of the creatures are getting inside through the back door of the manor. See if you can find out how these monsters are getting inside. If you find any sneaking in, kill them immediately to save those artifacts!");
    }
    else {
      plugin::DiaWind("Hello, $name");
    }
  }
}

sub EVENT_ITEM {
  plugin::return_items(\%itemcount);
}

#EndFile: cauldron\Symperbell_Moor.pl (70070)