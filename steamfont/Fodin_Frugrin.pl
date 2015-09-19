#########################################################
# Fodin Frugrin (ID:56177)
# Zone:   Steamfont (steamfont)
# Quest:  Telescope Lenses
# Quest:  Air Tight Box
# Author: a_sewer_rat
#########################################################

sub EVENT_SAY {
   if($text=~/Hail/i){
      plugin::DiaWind("Hello $name. Have you ever peered beyond our little world? Somewhere out there in the vast darkness is a world filled with great technology and adventure. Our people should concentrate on reaching these distant worlds beyond the sparkling skies.");
   }
   if($text=~/Larkon sent me/i){
      plugin::DiaWind("There is much more you must do for the Library of Mechanimagica before such things can be revealed to you. Perhaps fetching minotaur horns and returning them to Professor Theardor will earn you membership to the Library of Mechanimagica. But I suppose if Larkon sent you that you truly wish to prove yourself, eh? You'll have to get your hands a bit dirty, though. Take this box and fill it with livers from those infected rats. We need them for research. Well go on. You can take a bath when you're done.");
      quest::summonitem(17923); #air tight box (container)
   }
   if($text=~/lens/i){
      plugin::DiaWind("Spare Telescopic Lens?? I am sorry but I don't have any spares right now.. Oh wait!! I do. Here you are my friend. Careful with that. They are very rare.");
      quest::summonitem(13277); #telescope lens [fodin's lens]
   }
}

#END of FILE Zone:steamfont  ID:56177 -- Fodin_Frugrin 