
sub EVENT_SPELL_EFFECT_CLIENT {
  if ($client->IsSitting()) {
    $client->BuffFadeBySpellID(2326);
  }
}

sub EVENT_SPELL_BUFF_TIC_CLIENT {
  if ($client->IsSitting()) {
    $client->BuffFadeBySpellID(2326);
    plugin::Debug($client->FindBuff(2326));
  }
}
