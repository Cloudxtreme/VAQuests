sub EVENT_SPAWN {
#  quest::FlyMode(1);
  quest::gmsay("test");
  $mob->SetFlyMode(2);
  $npc->SendAppearanceEffect(335);
}
