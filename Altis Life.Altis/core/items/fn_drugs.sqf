/*
    File: fn_meth.sqf
    Author: Kuchiha

    Description:
    Meth effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a little before starting drugs effects
hint "The world is so colourfull! So peacefull!! I can fly...!";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effects
for "_i" from 0 to 44 do
{
    "chromAberration" ppEffectAdjust [random 0.15,random 0.15,true];
    "chromAberration" ppEffectCommit 1;   
    "radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 20, 1, random 50];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;