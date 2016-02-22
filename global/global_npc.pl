sub EVENT_SPAWN {
  $roll = int(rand(1000)) + 1;

  if($roll >= 995) {
    #my $itemid = ( int rand 95000 ) + 1001;
    my $itemid=(132520);

    $npc->AddItem($itemid);
  }
}
