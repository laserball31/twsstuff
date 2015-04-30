#include <macro.h>
/*
	File: fn_skydive.sqf
	Author TheRick
	
	Description:
	Skydive teleport script
*/
private ["_skydiveCost"];
if(playerSide in [west,independent]) exitWith {hint "You are not a civilian!";};
if (vehicle player != player) exitWith {hint "Get out of your vehicle!";};
if(!alive player) exitWith {hint"You dead homie.. dafuq";};

_skydiveCost = 50000;
if(life_atm < _skydiveCost) exitWith {hint format[localize "STR_NOTF_LO_NoCash",_skydiveCost];};
life_atm = life_atm - _skydiveCost;

titleText ["$50.000 has been taken of your bank account!","PLAIN"];

RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);
sleep 3;
	
player addUniform "U_B_HeliPilotCoveralls";
player addGoggles "G_Combat";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "NVGoggles";
player assignItem "NVGoggles";
player addBackPack "B_Parachute";
reload player;
titleText ["Get ready!!","PLAIN"];
sleep 3;

player setPosATL [18065.121,12865.137,2998];