# NPC: #a_troll_marauder (224131)
# Angelox

sub EVENT_COMBAT{
    plugin::DiaWind("How foolish to pick a fight here. You will never leave this place alive");
}

sub EVENT_DEATH_COMPLETE{
  quest::emote("corpse becomes one less mouth to feed.");
 }

# EOF zone: Gunthak