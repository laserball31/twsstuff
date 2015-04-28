/*
	File: fn_colorVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Reskins the vehicle
*/
private["_vehicle","_index","_texture","_texture2","_texture3"];
_vehicle = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
if(isNull _vehicle OR !alive _vehicle OR _index == -1) exitWith {};
//Does the vehicle already have random styles? Halt till it's set.

if(local _vehicle) then {
	switch (typeOf _vehicle) do
	{
		case "C_Offroad_01_F": {_vehicle setVariable["color",3];};
		case "C_Hatchback_01_F": {_vehicle setVariable["color",1];};
		case "C_Hatchback_01_sport_F": {_vehicle setVariable["color",1];};
		case "C_SUV_01_F": {_vehicle setVariable["color",1];};
		case "C_Van_01_box_F": {_vehicle setVariable["color",1];};
		case "C_Van_01_transport_F": {_vehicle setVariable["color",1];};
	};
};

//Fetch texture from our present array.
_texture = [(typeOf _vehicle)] call life_fnc_vehicleColorCfg;
if(isNil "_texture") exitWith {};
if(count _texture == 0) exitWith {};

//Local to us? Set it's color.
if(local _vehicle) then
{
	_vehicle setVariable["Life_VEH_color",_index,true];
};

waitUntil{!isNil {_vehicle getVariable "Life_VEH_color"}};

_textureX = (_texture select _index);
_textureX set [1,"deletethis"];
_textureX = _textureX - ["deletethis"];

for [{_i=0},{_i < (count _textureX)},{_i=_i+1}] do {
	if(isNil (_textureX select _i)) then{
		_vehicle setObjectTexture [_i, (_textureX select _i)];
	};
};