sub EVENT_SAY {
   if($text=~/hail/i) {
            if ($client->GetRawSkill(60) > 99 && $client->GetRawSkill(61) > 99 && $client->GetRawSkill(63) > 99 && $client->GetRawSkill(68) > 99 && $client->GetRawSkill(65) > 99 && $client->GetRawSkill(69) > 99 && $client->GetRawSkill(64) > 99) {
                quest::enabletitle(7);
        }

# Journeyman Artisan
        if ($client->GetRawSkill(60) > 199 && $client->GetRawSkill(61) > 199 && $client->GetRawSkill(63) > 199 && $client->GetRawSkill(68) > 199 && $client->GetRawSkill(65) > 199 && $client->GetRawSkill(69) > 199 && $client->GetRawSkill(64) > 199) {
                quest::enabletitle(8);
        }

# Expert Artisan
        if ($client->GetRawSkill(60) > 249 && $client->GetRawSkill(61) > 249 && $client->GetRawSkill(63) > 249 && $client->GetRawSkill(68) > 249 && $client->GetRawSkill(65) > 249 && $client->GetRawSkill(69) > 249 && $client->GetRawSkill(64) > 249) {
                quest::enabletitle(9);
        }

  }
}
