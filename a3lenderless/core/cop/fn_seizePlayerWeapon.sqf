/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP;
//titleText format["Attack weapon by %1", name cursorTarget];
[[1, name player, getPlayerUID player, format["Seized %1 's weapons/illegal items.", name cursorTarget]],"TON_fnc_logIt",false,false] call life_fnc_MP;