#sub EVENT_SAY { 
#if($text=~/Hail/i){
#quest::say("Welcome to the center of Luclin $name. this is a very magical place. The magic that emanates from here can be felt even on the surface. Don't forget to speak to as many of us as you can before you venture far."); }
#}
#END of FILE Zone:nexus  ID:152012 -- Persy_Clutches 

sub EVENT_SAY {
# Apprentice Artisan
        if ($client->GetRawSkill(60) > 99 && $client->GetRawSkill(61) > 99 && $client->GetRawSkill(63) > 99 && $client->GetRawSkill(68) > 99 && $client->GetRawSkill(65) > 99 && $client->GetRawSkill(69) > 99 && $client->GetRawSkill(64) > 99) {
                quest::enabletitle(7)
        }

# Journeyman Artisan
        if ($client->GetRawSkill(60) > 199 && $client->GetRawSkill(61) > 199 && $client->GetRawSkill(63) > 199 && $client->GetRawSkill(68) > 199 && $client->GetRawSkill(65) > 199 && $client->GetRawSkill(69) > 199 && $client->GetRawSkill(64) > 199) {
                quest::enabletitle(8)
        }

# Expert Artisan
        if ($client->GetRawSkill(60) > 249 && $client->GetRawSkill(61) > 249 && $client->GetRawSkill(63) > 249 && $client->GetRawSkill(68) > 249 && $client->GetRawSkill(65) > 249 && $client->GetRawSkill(69) > 249 && $client->GetRawSkill(64) > 249) {
                quest::enabletitle(9)
        }
}