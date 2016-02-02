# flavor dialogue during the seventh prayer shawl quest
# 
# this is the npc on live servers that responds to the player reciting prayer to brell.
# quest needed to be changed slightly since an untargetted npc will not respond
# to dialogue on the emu
my $counter;
my $count = 0;

sub EVENT_SPAWN {
  $counter = 0;
  my $x = $npc->GetX();
  my $y = $npc->GetY();
  my $z = $npc->GetZ();
  quest::set_proximity($x - 30, $x + 30, $y - 30, $y + 30,$z - 5, $z + 5);
  quest::enable_proximity_say();
}

sub EVENT_SIGNAL {
  if ($signal == 33) {
    quest::emote("can feel a strong presence beginning to take shape in the chapel. Perhaps you should recite the prayer again.");
  }
  elsif ($signal == 66) {
    quest::emote("sense a being of great power focusing its attention on you.");
  }
  elsif ($signal == 99) {
    quest::emote("have been inspired! Brell has heard your prayers and granted your request.");
  }
}

sub EVENT_PROXIMITY_SAY {
#  if ($text=~/hail/i) {
#    quest::signalwith(115015,99,0);
#  }
  if ($text=~/Oh Brell, Thank you for protecting me and seeing me through my trials. Forgive me for the things I think and say and do that displease you. Please reveal to me your will and bless me with the patience and obedience to do that which you desire. Amen/i) {
    $counter += 1;
    if ($counter == 1) {
#      quest::signalwith(115015,99,0);
#      quest::signalwith(115230,33,0);
      quest::emote("can feel a strong presence beginning to take shape in the chapel. Perhaps you should recite the prayer again.");

    }
    elsif ($counter == 2) {
#      quest::signalwith(115230,66,0);
      quest::emote("sense a being of great power focusing its attention on you.");

    }
    elsif ($counter == 3) {
#      quest::signalwith(115230,99,0);
      quest::emote("have been inspired! Brell has heard your prayers and granted your request.");
      quest::summonitem(1855);
      $counter = 0;
    }
  }
}


# EOF zone: thurgadina ID: 115230 NPC: You

