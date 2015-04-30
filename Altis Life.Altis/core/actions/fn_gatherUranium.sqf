/*
    File: fn_gatherUranium.sqf
    Script by Tonic Edit by Nark0t1k
    Description:
    Gathers Uranium?
*/
private["_sum","_dice"];

_dice=ceil(random 3);
_sum = ["uranium1",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Mining Uranium... Please stand still.","PLAIN"];
    titleFadeOut 6;
    sleep 6;
    if(([true,"uranium1",_sum] call life_fnc_handleInv)) then
    {
        titleText[format["You have mined %1 Uranium.",_sum],"PLAIN"];
    };
};

life_action_inUse = false;