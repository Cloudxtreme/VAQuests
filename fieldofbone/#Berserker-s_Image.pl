#berserker epic
#written:wizardanim
#9/13/07

sub EVENT_DEATH_COMPLETE
{
quest::signalwith(78100,15,10);
}

sub EVENT_SPAWN

{
quest::setnexthpevent(50);
}

sub EVENT_HP

{
plugin::DiaWind("You cannot overcome my infinite rage!");
}