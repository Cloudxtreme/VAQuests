sub EVENT_SAY { 
if($text=~/Hail/i){
plugin::DiaWind("Greetings. $name! I have the finest Skyiron Ores for sale! Feel free to examine the quality of my ores! I am also charged with teaching members of the Legion techniques to [work Skyiron]. craft [Skyiron Targ Shields] and [Cabilis Scale Mail].");
}
if($text=~/what cabilis scale mail?/i){
plugin::DiaWind("Cabilis Scale Mail is a customized armor worn by the Legion of Cabilis. The mail can only be forged in the unique Cabilis Forge here in East Cabilis. All pieces of the mail require the appropriate section Mold and a Flask of Blood Water. Coifs. Masks. Gorgets. Mantles. Belts. and Bracelets require one Skyiron Sheet. and one set of Skyiron Scales. Gloves and Boots require Two Skyiron Sheets and one set of Skyiron Scales. Sleeves require two Skyiron Sheets and two sets of Skyiron Scales. Coats. Cloaks. and Leggings require three Skyiron Sheets. and two sets of Skyiron Scales. Once you have mastered these techniques you may want to try [imbued mail].");
}
if($text=~/what imbued mail?/i){
plugin::DiaWind("Imbued Cabilis Scale Mail is crafted in the same fashion as standard Cabilis Scale Mail with  two exceptions. Scale Temper must be used instead of Blood Water. and a piece of amber imbued by a powerful shaman must be crafted into each piece. Speak with brewers about obtaining scale temper if you have none available.");
}
if($text=~/what skyiron targ shields?/i){
plugin::DiaWind("Skyiron Targ Shields are customized shields perfect for members of the Legion of Cabilis. Such shields can only be crafted in our unique Cabilis Forge. The supplies needed for a shield are a Targ Shield Mold. a Folded Skyiron Sheet. a Forging Hammer. and Scale Temper."); }
}
#END of FILE Zone:cabeast  ID:5763 -- Smithy_Xzatik 

