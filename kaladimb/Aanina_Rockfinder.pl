sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 20879 => 1)) {
    plugin::DiaWind("Ah, nice of you to come and pick this up for Ganelorn! I know he is a busy fellow. I certainly hope that his girlfriend will like this gift.");
    quest::summonitem(20880);
  }
}