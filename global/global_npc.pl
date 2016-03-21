sub EVENT_SPAWN {
  $roll = int(rand(1000)) + 1;

  if($roll >= 992 && $mlevel >= 46) {
    #my $itemid = ( int rand 95000 ) + 1001;
    my $itemid=(132522);

    $npc->AddItem($itemid);
  }
}
