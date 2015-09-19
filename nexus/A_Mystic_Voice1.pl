sub EVENT_SIGNAL {
if ($signal == 20) {
plugin::DiaWind("In approximately ten minutes the portals will become active and will transport you back to Odus, Antonica, Faydwer, and Kunark.  In five minutes the portal to Velious will become active.");
}
if ($signal == 21) {
plugin::DiaWind("The portal to Velious will become active in three minutes.  Please begin gathering in the portal area.");
}
if ($signal == 22) {
plugin::DiaWind("One minute till teleportation to Velious.  Please be prepared to step onto the teleport pad.");
}
if ($signal == 23) {
plugin::DiaWind("The portal to Velious is now active.  Please stand on the pad and you will be teleported shortly.");
plugin::DiaWind("The portals to Odus, Antonica, Faydwer, and Kunark will become active in five minutes. Please begin gathering in the portal areas.");
}
if ($signal == 24) {
plugin::DiaWind("As a reminder, the portals to Odus, Antonica, Faydwer, and Kunark will become active in three minutes.");
}
if ($signal == 25) {
plugin::DiaWind("One minute till teleportation to Odus, Antonica, Faydwer, and Kunark. Please be prepared to step onto the teleport pad.");
}
if ($signal == 26) {
plugin::DiaWind("The portals to Odus, Antonica, Faydwer, and Kunark are now active. Please stand on the pad and you will be teleported shortly. Come back soon.");
plugin::DiaWind("In approximately ten minutes the portals will become active and will transport you back to Odus, Antonica, Faydwer, and Kunark.  In five minutes the portal to Velious will become active.");
}
  }