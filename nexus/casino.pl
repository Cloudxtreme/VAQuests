sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::say("Stuff. Blah blah blah."); 
  }
}
 
sub EVENT_ITEM {
$random_result = 0;
my $random_result = int(rand(5000));

# Buff Crystal - 0-3000
  if($itemcount{132520} && $random_result>=0 && $random_result<3000) {
    quest::summonitem(132521,5);
    quest::say("You won some crystals and shit.");
  }

#  if($itemcount{132520} && $random_result>1000 && $random_result<3000) {
#    quest::summonitem(quest::ChooseRandom(132521));
#  }

# Illusions - 3001-4700
  elsif($itemcount{132520} && $random_result>3000 && $random_result<4901){  
    quest::summonitem(quest::ChooseRandom(40612,40613,40684,40685,40714,40746,40778,40779,43971,43972,54833,54913,40638));
    quest::say("You won a shitty illusion!");
# 50854 - Drachnid mask - Not working right now
  }
# Legacy Items - 4700-5000
# Locket of Escape, 
# Circlet of Shadow
# Guise of the Deceiver
# Runed Fighter's Staff
# Holgresh Elder Beads
  elsif($itemcount{132520} && $random_result>4900 && $random_result<5001){  
    quest::summonitem(quest::ChooseRandom(14727,14730,2469,6630,24890));
    quest::say("Yep, that's a legacy item.");
  }
}
