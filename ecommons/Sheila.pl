sub EVENT_SAY { 
 if($text=~/hail/i) {
    $client->Message(15,"Hi there! Remember the old days when you and your friends would all gather here in the tunnel to sell your treasures? Or maybe you were shopping for some new gear? Well, you're in luck! I can send you to the [" . quest::saylink("Bazaar") . "] , a magical place where you can setup shop to sell your goods or even buy from others!");
  }
if ($text=~/bazaar/i){quest::movepc(151, 197, -868, 4, 252); }
} 
