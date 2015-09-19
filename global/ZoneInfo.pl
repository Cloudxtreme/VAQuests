sub EVENT_SAY {

  #initialize variables

  my ($firstword,$secondword,$thirdword,$fourthword) = "";
  my $count = 0;
  
  #adding junk word " done." at the end of the text helps the parser deal with junk whitespaces after in each word.
  
  my $str = $text . " done.";
  my $count = $str =~ s/((^|\s)\S)/$1/g;     #count the number of words used

  if ($status >= 200){                       #must be gm status 200 or higher
    if($str=~/Hail/i){
      plugin::DiaWind("Hello $name.  You are of GM status, level $status.  I will follow your [commands].");
    }
    if($count==6){
      ($firstword, $secondword,$thirdword,$fourthword,$fifthword,$sixthword) = $str =~ m/(.*\ )(.*\ )(.*\ )(.*\ )(.*\ )(.*)$/;
    }elsif($count==5){
      ($firstword, $secondword,$thirdword,$fourthword,$fifthword) = $str =~ m/(.*\ )(.*\ )(.*\ )(.*\ )(.*)$/;
    }elsif($count==4){
      ($firstword, $secondword,$thirdword,$fourthword) = $str =~ m/(.*\ )(.*\ )(.*\ )(.*)$/;
#      plugin::DiaWind("First Word = $firstword and Second Word = $secondword and Third Word = $thirdword and Fourth Word = $fourthword");
    }elsif($count==3){
      ($firstword, $secondword,$thirdword) = $str =~ m/(.*\ )(.*\ )(.*)$/;
#      plugin::DiaWind("First Word = $firstword and Second Word = $secondword and Third Word = $thirdword");
    }elsif ($count==2){
      ($firstword, $secondword) = $str =~ m/(.*\ )(.*)$/;
#      plugin::DiaWind("First Word = $firstword and Second Word = $secondword");
    }elsif($count==1){
      $firstword = $str;
#      plugin::DiaWind("You only said $firstword");
    }else{
      plugin::DiaWind("Too many words");
    }

my $chr = chop($secondword);
my $chr = chop($thirdword);
my $chr = chop($fourthword);
my $chr = chop($fifthword);
my $chr = chop($sixthword);



# command list:  open, close, faction, setglobal, getglobal, delglobal, follow, stop, depop...
# Note: $count will always be one word higher than what was typed due to junk word added

    if($firstword=~/command/i){
      plugin::DiaWind("I follow these commands:  [follow],[depop],[getcondition],[setcondition],[open],[close],[setglobal],[getglobal],[delglobal]");
    }

    if($firstword=~/follow/i){
      if(($count==3) && ($secondword=~/on/i)){
        plugin::DiaWind("I will follow $name");
        quest::follow($userid);
      }elsif(($count==3) && ($secondword=~/off/i)){
        plugin::DiaWind("I will stop following you.");
        quest::sfollow();
      }else{
        plugin::DiaWind("Usage:  Follow <on|off>");
        plugin::DiaWind("This command turns my follow mode on or off.");
      }
    }
    
    if($firstword=~/depop/i){
      plugin::DiaWind("I will depop.");
      quest::depop();
    }


    if($firstword=~/getcondition/i){
      if($count==4){
        plugin::DiaWind("You have requested I set get spawn condition $thirdword for zone $secondword.  I will do that now.");
        my $spawnvalue = quest::get_spawn_condition("$secondword",$thirdword+=0);
        plugin::DiaWind("It is currently set at $spawnvalue");
      }else{
        plugin::DiaWind("Usage: getcondition <zonename> <id>");
        plugin::DiaWind("This command tells you the value for the spawn condition <id> for the specified <zonename>.");
      }
    }

    if($firstword=~/setcondition/i){
      if($count==5){
        plugin::DiaWind("You have requested I set spawn condition $thirdword to $fourthword in zone $secondword.  I will do that now.");
        quest::spawn_condition("$secondword",$thirdword+=0,$fourthword+=0);
      }else{
        plugin::DiaWind("Usage: setcondition <zonename> <id> <value>");
        plugin::DiaWind("This command sets the spawn condition for <id> to <value> in the <zonename> you specify.");
      }
      plugin::DiaWind("Please note:  The target zone MUST be reloaded before the spawn condition change will be recognized, UNLESS the condition you change is for the zone you are currently in.");
    }

    if($firstword=~/open/i){
      if($count==3){
        plugin::DiaWind("You have requested that I open door $secondword.  I will do so now.");
        quest::forcedooropen($secondword+=0);
      }else{
        plugin::DiaWind("Usage: Open <doorid>");
        plugin::DiaWind("This command opens the door specified by <doorid>.  This only works with doors in the current zone.");
      }
    }
    
    if($firstword=~/close/i){
      if($count==3){
        plugin::DiaWind("You have requested that I close door $secondword.  I will do so now.");
        quest::forcedoorclose($secondword+=0);
      }else{
        plugin::DiaWind("Usage: Close <doorid>");
        plugin::DiaWind("This command closes the door specified by <doorid>.  This only works with doors in the current zone.");
      }
    }
    
    if($firstword=~/faction/i){
      if($count==4){
        plugin::DiaWind("You have requested I change your faction number $secondword by $thirdword.  I will do that now.");
        quest::faction($secondword+=0,$thirdword+=0);
      }else{
        plugin::DiaWind("Usage: Faction <factionid> <value>");
        plugin::DiaWind("This command changes your faction with <factionid> by the number of points specified in <value>.  Negative values will reduce faction");
      }
    }
    
    if($firstword=~/setglobal/i){
      if($count==6){
        plugin::DiaWind("You want me to set qglobal \$$secondword to value $thirdword, with the parameters $fourthword, $fifthword.  I will do that now.");
        quest::setglobal("$secondword",$thirdword,"$fourthword","$fifthword");
      }else{
        plugin::DiaWind("Usage: setglobal <globalname> <value> <options> <duration>");
        plugin::DiaWind("I will set global <globalname> to <value> with the specified <options> and <duration>.");
        plugin::DiaWind("Please Note: Using incorrect <options> may result in changing the wrong global, or creating one no other npcs or zones may see.  Except under certain condiions, it is impractical to use this for options other than 3 or 7.");
      }
    }
    
    if($firstword=~/getglobal/i){
      if($count==3){
        plugin::DiaWind("Your qgolbal variable \$$secondword is currently set to $qglobals{$secondword}.");
      }else{
        plugin::DiaWind("Usage: getglobal <globalname>.");
        plugin::DiaWind("This command tells you the value of <globalname>.");
        plugin::DiaWind("Please Note:  The global's options must have been set correctly for this to work.  I cannot tell you the value of a global that I do not have access to.");
      }
    }
    
    if($firstword=~/delglobal/i){
      if($count==3){
        plugin::DiaWind("Your qgolbal variable \$$secondword will be deleted.");
        quest::delglobal("$secondword");
        $qglobals{$secondword} = $undef;
      }else{
        plugin::DiaWind("Usage:  delglobal <globalname>");
        plugin::DiaWind("This command deletes the global <globalname>.");
        plugin::DiaWind("Please Note:  I cannot delete globals that don't belong to me.");
      }
    }
    
  }else{
  }
}
 
sub EVENT_ITEM{
  plugin::return_items(\%itemcount);
}