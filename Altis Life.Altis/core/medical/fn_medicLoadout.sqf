/*
File: fn_medicLoadout.sqf
Author: Bryan "Tonic" Boardwine
Description:
Loads the medic out with the default gear.
*/

private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

player forceAddUniform "U_Rangemaster"; 
player addVest "V_PlateCarrier1_blk";
player addBackpack "B_Carryall_oli";
player addItem "Medikit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
[] call life_fnc_saveGear;