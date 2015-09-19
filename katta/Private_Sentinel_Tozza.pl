sub EVENT_AGGRO{
   plugin::DiaWind("You have trespassed where you are not welcome! Prepare to face your punishment!");
}

sub EVENT_SIGNAL{
   if($signal == 1){
      plugin::DiaWind("Fool!! You know not what you have released upon us!! Nathyn will have your heads for this!!");
   }
}