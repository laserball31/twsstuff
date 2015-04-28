/*
	@Version: 2.0
	@Author: [BWG] Joe
	@Edited: 10.10.2013
*/
private ["_create","_marker","_index","_terrainHeight","_turtles","_pos"];

_create = [_this, 0, false] call BIS_fnc_param;
_marker = getMarkerPos "turtle_1";
if (_marker == "") exitWith {};
_index = parseNumber ([_marker, 1] call KRON_StrRight);

if (isNil {life_turtles}) then {
	life_turtles = [];
};

if (_create) then {
	_turtles = [];
	for "_i" from 0 to 50 do {
		sleep 0.1;
		_turtles pushBack (createAgent ["Turtle_F", [0,0,0], [_marker], 200, "NONE"]);
	};
	life_turtles set [_index, _turtles];
} else {
	{
		if (alive _x) then {
			deleteVehicle _x;
		};
	} forEach (life_turtles select _index);
};