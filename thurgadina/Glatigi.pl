# Quest for Glatigi in Thurgadina - Berserker Velious Armor (Icefury) 

sub EVENT_SAY { 
  if ($faction <= 3) { # Require Warmly and greater faction    
    if($text=~/Hail/i){
      plugin::DiaWind("Well met, $race! I am Glatigi. If ye seek ta join our ranks, I welcome ye with open arms and have an offer to make if you are interested. If ye seek to be our enemy, I hope ye can run swifter than my archers arrows.");
    }
    if($text=~/i am interested/i){
      plugin::DiaWind("Aye, I thought ye might be. My elite Berserkers are in sore need of some enchanted armor. Unfortunately, I can�t spare the men to go out and fetch me the components. If you can do this for me, I�ll gladly reward you with a piece of it. I need materials for a coif, a tunic, sleeves, bracers, gauntlets, leggings, and boots.");
    }
    if($text=~/coif/i){
      plugin::DiaWind("To create a piece of armor to protect your skull I will require three pieces of crushed coral as well as a corroded chain coif."); 
    }
    if($text=~/tunic/i){ 
      plugin::DiaWind("For the breastplate, I will need a corroded chain tunic and three flawless diamonds. Once I have them in my possession it will not take long to craft a sturdy tunic."); 
    }
    if($text=~/sleeves/i){
      plugin::DiaWind("Protection for your arms will come at the price of a set of corroded chain sleeves and three flawed emeralds."); 
    }
    if($text=~/bracers/i){
      plugin::DiaWind("For the bracers, I will require a corroded chain bracer and a set of three crushed flame emeralds. Return to me if you happen to find these things in your travels."); 
    }
    if($text=~/gauntlets/i){
      plugin::DiaWind("Protecting your hands is very important. I can forge protection for your hands if you bring me a pair of corroded chain gauntlets and three crushed topaz."); 
    }
    if($text=~/leggings/i){
      plugin::DiaWind("A set of corroded leggings might be salvageable if you were to find three flawed sea sapphires. With the right techniques almost anything is possible."); 
    }
    if($text=~/boots/i){
      plugin::DiaWind("Boots made for battle are not always the most comfortable available. However if you seek a fine set for battle bring me a set of corroded chain boots and three pieces of crushed black marble.");
    }
  }
  else { 
    plugin::DiaWind("I do not know you well enough to entrust you with such a quest, yet."); 
  } 
} 

sub EVENT_ITEM { 
  if ($faction <= 3) { # Require warmly and greater faction 
    if (plugin::check_handin(\%itemcount, 25814 => 3, 24935 => 1)) { # tunic 
      quest::summonitem(55318); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well."); 
    } 
    elsif (plugin::check_handin(\%itemcount, 25821 => 3, 24937 => 1)) { # sleeves 
      quest::summonitem(55319); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25825 => 3, 24936 => 1)) { # leggings 
      quest::summonitem(55322); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well."); 
    } 
    elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24941 => 1)) { # gauntlets 
      quest::summonitem(55321); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well.");  
    } 
    elsif (plugin::check_handin(\%itemcount, 25831 => 3, 24940 => 1)) { # coif 	
      quest::summonitem(55317); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well.");
    } 
    elsif (plugin::check_handin(\%itemcount, 25838 => 3, 24939 => 1)) { # bracers 
      quest::summonitem(55320); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well.");
    } 
    elsif (plugin::check_handin(\%itemcount, 25833 => 3, 24938 => 1)) { # boots 
      quest::summonitem(55323); 
      quest::exp(100000); 
      quest::faction(49,20); # coldain 
      quest::faction(67,20); # Dain Frostreaver IV 
      quest::faction(188,-60); # Kromrif 
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as he hands you your reward.");
      plugin::DiaWind("You have done well.");
    } 
    else { 
      plugin::return_items(\%itemcount); 
    } 
  }
  else { 
    plugin::DiaWind("I do not know you well enough to entrust you with such an item, yet."); 
  }    
} 


#END of FILE Zone:thurgadina  ID:115114 -- Glatigi 
 
