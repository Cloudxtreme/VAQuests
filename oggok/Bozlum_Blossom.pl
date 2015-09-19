# Test of Illusion - enchanter epic - Snow Blossoms
# 


sub EVENT_SAY {
  if ($text=~/hail/i) {
    quest::emote("heaves a great sigh.");
  }
  if ($text=~/wrong/i) {
    plugin::DiaWind("Boz like to grow perty flowers in her garden. But garden no more.");
  }
  if ($text=~/garden/i) {
    plugin::DiaWind("Boz not know what happen. Only see der biggins footprints in it. Me perty sure my puppy not smash garden. He has tiny feets. Right, puppy?");
    # quest::me("Bozlum Blossom's pet wags his tail.");
    # nameless emotes don't work yet
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 10628 => 1)) {
    quest::emote("writes something down on a piece of parchment.");
    plugin::DiaWind("You go tell dat Brokk dat he owe me big for smushing garden. Make him read dis.");
    quest::summonitem(10629);
  }
  elsif (plugin::check_handin(\%itemcount, 10630 => 1)) {
    plugin::DiaWind("'Oh, dat silly Brokk. He sent me too many of these perty flowers. Me not know where put them all. Here, you take some cause you help Bozlum. Me like you. Flowers make you smell perty, too.");
    quest::exp(100);
    quest::summonitem(10609);
  }
  plugin::return_items(\%itemcount);
}

# EOF Zone: oggok ID: 49023 NPC: Bozlum_Blossom

