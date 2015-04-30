#include <macro.h>
/*
	File: fn_blacklistCop.sqf
	Author: TheRick
 
	Description: Blacklist the selected player and ends his mission
*/
private["_admin"];
_admin = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

[8] call SOCK_fnc_updatePartial;
["Blacklisted",false,true] call BIS_fnc_endMission;
sleep 35;