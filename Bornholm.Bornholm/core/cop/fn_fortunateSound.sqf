private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle) exitWith {};
if(isNil {_vehicle getVariable "siren3"}) exitWith {};

while {true} do
{
    if(!(_vehicle getVariable "siren3")) exitWith {};
    if(count (crew (_vehicle)) == 0) then {_vehicle setVariable["siren3",false,true]};
    if(!alive _vehicle) exitWith {};
    if(isNull _vehicle) exitWith {};
    _vehicle say3D "FortunateSound";
    sleep 18;
	_vehicle setVariable["siren3",false,true];
    if(!(_vehicle getVariable "siren3")) exitWith {};
};