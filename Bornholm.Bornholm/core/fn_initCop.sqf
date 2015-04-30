#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end","_unit"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if(__GETC__(life_coplevel) == 7) then {
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

//Whitelist for good cops
if((str(player) in ["cop_4","cop_5","cop_6","cop_7","cop_8","cop_9","cop_10","cop_11","cop_12","cop_13","cop_14","cop_15","cop_16","cop_17","cop_18","cop_19","cop_20","cop_21","cop_22","cop_23","cop_24","cop_25"])) then {
	if(__GETC__(life_coplevel) < 1) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

//Whitelist for LHMC
if((str(player) in ["cop_26","cop_27","cop_28","cop_29","cop_30"])) then {
	if(__GETC__(life_coplevel) < 6) then {
		["NotGITS",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
switch(__GETC__(life_coplevel)) do
{
	case 0: {life_paycheck = life_paycheck + 1000;};//Constable
	case 1: {life_paycheck = life_paycheck + 2000;};//Sergeant
	case 2: {life_paycheck = life_paycheck + 3000;};//Inspector
	case 3: {life_paycheck = life_paycheck + 4000;};//Chief-Inspector
	case 4: {life_paycheck = life_paycheck + 5000;};//Super-intendent
	case 5: {life_paycheck = life_paycheck + 6000;};//Military
	case 6: {life_paycheck = life_paycheck + 15000;};//LHMC Only
};

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

player allowDamage true;
_unit allowDamage true;
[] spawn
player allowDamage true;
{
while {true} do
	{
		if(__GETC__(life_coplevel) == 0) then {
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"textures\cop\clothing\Constable.jpg"];
			waitUntil {uniform player != "U_Rangemaster"};
		};
		if(__GETC__(life_coplevel) == 1) then {
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"textures\cop\clothing\Sergeant.jpg"];
			waitUntil {uniform player != "U_Rangemaster"};
		};
		if(__GETC__(life_coplevel) == 2) then {
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"textures\cop\clothing\Inspector.jpg"];
			waitUntil {uniform player != "U_Rangemaster"};
		};
		if(__GETC__(life_coplevel) == 3) then {
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"textures\cop\clothing\Superintendent.jpg"];
			waitUntil {uniform player != "U_Rangemaster"};
		};
		if(__GETC__(life_coplevel) > 3) then {
			waitUntil {uniform player == "U_Rangemaster"};
			player setObjectTextureGlobal [0,"textures\cop\clothing\Military.jpg"];
			waitUntil {uniform player != "U_Rangemaster"};
		};
	};
};