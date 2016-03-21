sub EVENT_ENTERZONE {
$client->BuffFadeByEffect(113);
}

sub EVENT_TASK_STAGE_COMPLETE {
  if($task_id == 272) {
    $random_result = 0;
    my $random_result = int(rand(5000));
    plugin::Debug("$random_result");
    if($random_result>=0 && $random_result<4501) {
      quest::say("This token is in fair condition. Use these crystals to fortify yourself and your companions.");
      quest::summonitem(132521,5);
    }
    elsif($random_result>4500 && $random_result<4901) {
      quest::say("This token is in fine shape. Use this item to mask your appearance.");
      quest::summonitem(quest::ChooseRandom(40612,40613,40684,40685,40714,40746,40778,40779,43971,43972,54833,54913,40638));
    }
    elsif($random_result>4900 && $random_result<5001) {
      quest::summonitem(quest::ChooseRandom(14727,14730,2469,6630,24890));
      quest::say("This token is in fantastic condition! Here's something from my private stock!");
    }
  }
}
