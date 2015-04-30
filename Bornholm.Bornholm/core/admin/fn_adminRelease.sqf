#include <macro.h>
/*
	File: fn_adminRelease.sqf
	Author: TheRick
	
	Description:
	Release the chosen player from jail.
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(__GETC__(life_adminlevel) < 3) exitWith {hint localize "STR_ANOTF_ErrorLevel";};

[[player],"life_fnc_releasePlayer",_unit,false] spawn life_fnc_MP;
titleText[localize "STR_Cop_AdminRelease","PLAIN"];