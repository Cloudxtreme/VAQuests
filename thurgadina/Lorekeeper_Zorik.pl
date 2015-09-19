#Zone: Thurgadin
#Short Name: thurgadina
#Zone ID: 115
#
#NPC Name: Lorekeeper Zorik
#NPC ID: 115153 115221
#
# used generic reward text found on other npc's already created.

sub EVENT_SAY {
  if ($faction <= 3) { # Require warmly and greater faction
    if ($text=~/hail/i) {
      plugin::DiaWind("I seek those who practice the art of dark magicks. I seek those who call themselves necromancers. Are you a necromancer?");
    }
    if ($text=~/i am a necromancer/i) {
    plugin::DiaWind("Excellent. Are you sure enough of your skills to undertake my tasks? If not, get out of my sight, weakling!");
    }
    if ($text=~/undertake your tasks/i) {
      plugin::DiaWind("'I thought so. One should never back down from a challenge. Once you have completed them, I will have a cap, a robe, sleeves, wristbands, gloves, leggings and boots to reward you with.");
    }
    if ($text=~/cap/i) {
    plugin::DiaWind("For an enchanted head guard bring me a torn enchanted silk turban as well as three pieces of crushed flame opal.");
    }
    if ($text=~/robe/i) {
    plugin::DiaWind("If you wish to have a fine robe, bring unto me a torn enchanted silk robe and three pristine emeralds. Then you will receive a robe beyond your wildest dreams.");
    }
    if ($text=~/sleeves/i) {
    plugin::DiaWind("Bring unto me a set of torn enchanted silk sleeves as well as three flawed topaz. With these in my possession I can create a set of enchanted sleeves the likes of which spellcasters like you dream of.");
    }
    if ($text=~/wristbands/i) {
    plugin::DiaWind("An enchanted silk wristguard and three crushed onyx sapphires is all that I require to create an imbued wrist wrap of great power. Seek out these items and return to me when you have acquired them.");
    }
    if ($text=~/leggings/i) {
    plugin::DiaWind("Three nephrite and a pair of torn enchanted silk leggings will net you a fine set of pantaloons.");
    }
    if ($text=~/boots/i) {
    plugin::DiaWind("Three crushed jaundice gems combined with torn enchanted silk boots would make a most interesting set of footwear. The latent powers of the gems can be harnessed to create magical effects.");
    }
    if ($text=~/gloves/i) {
    plugin::DiaWind("If you seek gloves of great power, bring to me three crushed topaz and a pair of torn enchanted silk gloves. I will use the power of the gems to imbue the gloves.");
    }
  }
  else {
    plugin::DiaWind("I do not know you well enough to entrust you with such a quest, yet.");
  }
}

sub EVENT_ITEM {
  if ($faction <= 3) { # Require warmly and greater faction
    if (plugin::check_handin(\%itemcount, 25837 => 3, 24954 => 1)) { # cap
      quest::summonitem(31063);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25807 => 3, 24949 => 1)) { # robe
      quest::summonitem(31064);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25818 => 3, 24951 => 1)) { # sleeves
      quest::summonitem(31065);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25841 => 3, 24953 => 1)) { # wrist
      quest::summonitem(31066);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25832 => 3, 24955 => 1)) { # gloves
      quest::summonitem(31067);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25816 => 3, 24950 => 1)) { # legs
      quest::summonitem(31068);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
      plugin::DiaWind("You have done well.");
    }
    elsif (plugin::check_handin(\%itemcount, 25829 => 3, 24952 => 1)) { # boots
      quest::summonitem(31069);
      quest::exp(100000);
      quest::faction(49,20); # coldain
      quest::faction(67,20); # Dain Frostreaver IV
      quest::faction(188,-60); # Kromrif
      quest::faction(189,-60); # Kromzek
      quest::emote("smiles warmly as she hands you your reward.");
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

#END of FILE Zone: thurgadina ID:115153 -- Lorekeeper_Zorik

