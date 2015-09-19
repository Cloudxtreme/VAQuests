sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("You have done well!  The way forward is now clear.");
    quest::setglobal("god_tipt_access", 1, 5, "F");
    $client->Message(4,"You receive a character flag!");
  }
}