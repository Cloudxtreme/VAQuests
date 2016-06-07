sub EVENT_SPAWN {
  $roll = int(rand(1000)) + 1;
  $roll2 = int(rand(1000)) + 1;

  if($roll >= 992 && $mlevel >= 46) {
    my $itemid=(132522);
    $npc->AddItem($itemid);
  }

  if($roll >= 900 && $roll <= 910) {
    my $itemid=(40605);
    $npc->AddItem($itemid);
  }
}

sub EVENT_DEATH {
  if ($ulevel > ($mlevel + 15)) {
    $npc->RemoveItem(40605);
  }
}
