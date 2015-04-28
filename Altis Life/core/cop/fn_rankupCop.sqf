#include <macro.h>
/*
	File: fn_rankupCop.sqf
	Author: TheRick
 
	Description: Ranks up the selected player and ends his mission (to save)
*/
private["_admin"];
_admin = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(__GETC__(life_coplevel) == 6) exitWith {};

[10] call SOCK_fnc_updatePartial;
["Promoted",false,true] call BIS_fnc_endMission;
sleep 35;