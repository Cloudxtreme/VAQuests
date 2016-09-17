my $check;
my $variance = int(rand(600));
my $spawntime = 5760 + $variance;

sub EVENT_SPAWN {
  quest::settimer("cursed",60);
}

sub EVENT_TIMER {
  $check = 0;
  if($timer eq "cursed") {
    quest::stoptimer("cursed");
    $check_boss = $entity_list->GetMobByNpcTypeID(162270);#cursed_one
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162271);#cursed_two
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162272);#cursed_three
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162273);#cursed_four
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162274);#cursed_five
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162275);#cursed_six
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162276);#cursed_seven
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162277);#cursed_eight
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162278);#cursed_nine
    if ($check_boss) {
      $check = 1;
    }
    $check_boss = $entity_list->GetMobByNpcTypeID(162279);#cursed_ten
    if ($check_boss) {
      $check = 1;
    }
    if ($check == 1) {
    quest::settimer("cursed",60);
    }

#    if ($check == 0 && defined $qglobals{cursed_dead}) {
    if ($check == 0) {
      if (defined $qglobals{glyphed_dead}) {
        quest::spawn2(162253,0,0,-51,-9,-218.1,63);#runed
      }
      elsif (!defined $qglobals{glyphed_dead}) {
        quest::spawn2(162261,0,0,-51,-9,-218.1,63);#glyphed
      }
      quest::stoptimer("cursed");
      quest::stoptimer("one");
      quest::settimer("one",21600);
    }
  }
  if ($timer eq "one" && !defined $qglobals{cursed_dead}) {
    quest::stoptimer("one");
    quest::depop(162206);
    quest::depop(162232);
    quest::depop(162214);
    quest::depop(162261);
    quest::depop(162253);
    quest::depop_withtimer();
  }
}

sub EVENT_SIGNAL {
  $check_rhag2 = $entity_list->GetMobByNpcTypeID(162192);# Rhag`Mozdezh
  if ($signal == 1 && defined $qglobals{exiled_dead}) {
    quest::spawn2(162214,0,0,-51,-9,-218.1,63);#Banished
  }
  elsif ($signal == 1 && !defined $qglobals{exiled_dead}) {
    quest::spawn2(162232,0,0,-51,-9,-218.1,63);#Exiled
  }
  if ($signal == 2 && !defined $qglobals{cursed_dead}) {
    quest::spawn2(162206,0,0,-51,-9,-218.1,63);#Cursed
  }
  if ($signal == 3) {	
    quest::setglobal("cursed_dead",1,3,"D4");
    quest::stoptimer("one");
    quest::depop_withtimer();
  }
  if ($signal == 4) {
    # Rhag1 is dead - Enable Rhag2 spawn
    quest::setglobal("rhag1_dead",1,3,"S259200");
    if (!defined $qglobals{rhag2_dead} && !$check_rhag2) {
      quest::disable_spawn2(34226); # Disable Rhag1
      quest::enable_spawn2(382989); # Enable Rhag2
  }
  # If Rhag2 dies, check Rhag1 spawn before spawning Arch Lich. If both are dead, spawn him.
  if ($signal == 5) {
      quest::setglobal("rhag2_dead",1,3,"S259200");
    if (defined $qglobals{rhag2_dead} && !defined $qglobals{al_dead}) {
      # Rhag2 is dead - Enable Arch Lich spawn
      quest::enable_spawn2(382990); # Enable Arch Lich
      quest::enable_spawn2(34226); # Enable Rhag1
      quest::disable_spawn2(382989); # Disable Rhag2
    }
  }
    if ($signal == 6) {
      # Arch Lich is dead - Disable his spawn
      quest::setglobal("al_dead",1,3,"S259200");
      quest::disable_spawn2(382990); # Disable Arch Lich
      quest::enable_spawn2(34226); # Enable Rhag1
    }
  }
}

162192
