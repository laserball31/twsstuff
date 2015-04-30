#include <macro.h>
/*
	File: fn_adminBlacklist.sqf
	Author: TheRick
	
	Description:
	Blacklists the chosen player from cops
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
_rank = _unit getVariable "rank";

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(__GETC__(life_adminlevel) < 3) exitWith {hint localize "STR_ANOTF_ErrorLevel";};
if(_rank == 7) exitWith {titleText[localize "STR_ANOTF_Cannot_BL","PLAIN"];};

[[player],"life_fnc_blacklistCop",_unit,false] spawn life_fnc_MP;
titleText[localize "STR_ANOTF_Blacklisted","PLAIN"];
[[0,format[localize "STR_NOTF_Blacklisted",_unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;