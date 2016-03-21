# Gargoyle Illusion Click

sub EVENT_ITEM_CLICK {
  if($spell_id == 28016 && $zoneid < 110) {
    $client->CastSpell(940, $client->GetID());
  }
  elsif ($zoneid > 110) {
   $client->Message(13, "This spell can only be used in the old world");
  } 
}
