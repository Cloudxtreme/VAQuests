sub EVENT_SAY { 
  if($text=~/Hail/i){
    quest::say("Greetings, $name. I am Collector Dannel. I am searching for tokens commemorating the first year of the Vegarlson Asylum server. If you happen to find any, please bring then to me. Please hand them to me UNSTACKED, as I must examine each individually. I will reward you based on the quality of the token. Good luck!");
  }
}
 
sub EVENT_ITEM {
$random_result = 0;
my $random_result = int(rand(5000));

# Buff Crystal - 0-3000
  if($itemcount{132520} == 1) {
    if($random_result>=0 && $random_result<4501) {
      quest::summonitem(132521,5);
      quest::say("This token is in fair condition. Use these crystals to fortify yourself and your companions.");
    }

    # Illusions - 3001-4700
    elsif($random_result>4500 && $random_result<4901){  
      quest::summonitem(quest::ChooseRandom(40612,40613,40684,40685,40714,40746,40778,40779,43971,43972,54833,54913,40638));
      quest::say("This token is in fine shape. Use this item to mask your appearance.");
    }

    # Legacy Items - 4950-5000
    # Locket of Escape, 
    # Circlet of Shadow
    # Guise of the Deceiver
    # Runed Fighter's Staff
    # Holgresh Elder Beads
    elsif($random_result>4950 && $random_result<5001){  
      quest::summonitem(quest::ChooseRandom(14727,14730,2469,6630,24890));
      quest::say("This token is in fantastic condition! Here's something from my private stock!");
    }
  }
  elsif($itemcount{132520} > 2) {
    plugin::return_items(\%itemcount);
    quest::say("Remember, you must hand me the tokens unstacked.");
  }
  #elsif($itemcount{132520} == 3) {
  #  plugin::return_items(\%itemcount);
  #  quest::say("Remember, you must hand me the tokens unstacked.");
  #}
  #elsif($itemcount{132520} == 4) {
  #  plugin::return_items(\%itemcount);
  #  plugin::Whisper("Remember, you must hand me the tokens unstacked.");
  #}
}
