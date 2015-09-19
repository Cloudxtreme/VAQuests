sub EVENT_SAY {
  if ($text=~/hail/i) {
    plugin::DiaWind("Hi $name. Did [Bordag send you]?");
  }
  if ($text=~/bordag sent me/i) {
    plugin::DiaWind("So you want learn about how to fight like bear and crush enemy with bare hand? That good. Best way to start is just go out and do it. Biggest enemy around here lizard men. You go practice. Fight against lizard men. Bring me their tasty meat. You bring four.");
  }
}

sub EVENT_ITEM {
  if (plugin::check_handin(\%itemcount, 13410 => 4)) {
    plugin::DiaWind("Hmm, you do good against the lizard men. Here you go. If you want hat for head, bring four silk thread.");
    quest::summonitem(7375);
  }
  elsif (plugin::check_handin(\%itemcount, 16486 => 4)) {
    plugin::DiaWind("Very nice. You fight good with hat me make you. You want pants to cover legs, bring me doll from lizards.");
    quest::summonitem(7376);
  }
  elsif (plugin::check_handin(\%itemcount, 13367 => 1)) {
    plugin::DiaWind("You do good, now me have doll to play with. I give you wepun if you bring me fur and wings from two big bats.");
    quest::summonitem(7377);
  }
  elsif (plugin::check_handin(\%itemcount, 13061 => 2, 13062 => 2)) {
    plugin::DiaWind("Good job, these keep me warm. Last job for you. Go kill more lizards. Bring four tails.");
    quest::summonitem(7378);
  }
  elsif (plugin::check_handin(\%itemcount, 13354 => 4)) {
    plugin::DiaWind("You quick. You do good work. Me come find you when more jobs need done. Here is last armur me have.");
    quest::summonitem(7379);
  }
  else {
    plugin::DiaWind("Me not need dis.");
    plugin::check_handin(\%itemcount);
  }
}