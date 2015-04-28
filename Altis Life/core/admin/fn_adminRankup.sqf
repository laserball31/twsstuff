#include <macro.h>
/*
	File: fn_adminRankup.sqf
	Author: TheRick
	
	Description:
	Ranks up the selected player (coplevel+1)
*/
if(__GETC__(life_adminlevel) == 0) exitWith {closeDialog 0;};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
_rank = _unit getVariable "rank";

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
if(__GETC__(life_adminlevel) < 3) exitWith {hint localize "STR_ANOTF_ErrorLevel";};

if(_rank == 6) exitWith {titleText[localize "STR_ANOTF_Cannot_Promote","PLAIN"];};
[[player],"life_fnc_rankupCop",_unit,false] spawn life_fnc_MP;
titleText[localize "STR_ANOTF_Promoted","PLAIN"];