sub EVENT_SAY {

if ($text =~/Hail/i) { 
  plugin::DiaWind("Hello there little one, would you like some candy? ");
  $client=>SpellFinished(7477);
  
  
}
}






