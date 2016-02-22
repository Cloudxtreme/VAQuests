my $check;
my $variance = int(rand(600));
my $spawntime = 5760 + $variance;

sub EVENT_SPAWN {
  quest::settimer("cursed",60);
}

sub EVENT_TIMER {
  $check = 0;
  if($timer eq "cursed") {
    if($entity_list->GetMobByNpcTypeID(162270) || $entity_list->GetMobByNpcTypeID(162271) || $entity_list->GetMobByNpcTypeID(162272) || $entity_list->GetMobByNpcTypeID(162273) || $entity_list->GetMobByNpcTypeID(162274) || $entity_list->GetMobByNpcTypeID(162275) || $entity_list->GetMobByNpcTypeID(162276) || $entity_list->GetMobByNpcTypeID(162277) || $entity_list->GetMobByNpcTypeID(162278) || $entity_list->GetMobByNpcTypeID(162279)) {
      $check = 1;
#    }
      quest::settimer("cursed",10);
    }
    if ($check == 0 && defined $qglobals{cursed_dead}) {
    }
    elsif ($check == 0) {
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
#  if ($signal == 0) {
#    quest::
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
}
