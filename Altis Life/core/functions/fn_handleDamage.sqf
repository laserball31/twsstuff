/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_damage","_source","_projectile","_part","_curWep"];
_unit = _this select 0;
_part = _this select 1;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Internal Debugging.
if(!isNil "TON_Debug") then {
	systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];
};

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		_curWep = currentWeapon _source;
		if(_projectile in ["B_9x21_Ball","30Rnd_9x21_Mag","16Rnd_9x21_Mag"] && _curWep in ["hgun_P07_snds_F","SMG_02_F","SMG_02_ACO_F","SMG_02_ARCO_pointg_F"]) then {
			if(side _source == west && playerSide != west) then {
				private["_distance","_isVehicle","_isQuad"];
				_distance = if(_projectile in ["30Rnd_9x21_Mag","16Rnd_9x21_Mag"]) then {300} else {75};
				_isVehicle = if(vehicle player != player) then {true} else {false};
				_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
				
				_damage = false;
				if(_unit distance _source < _distance) then {
					if(!life_istazed && !(_unit getVariable["restrained",false])) then {
						if(_isVehicle && _isQuad) then {
							player action ["Eject",vehicle player];
							[_unit,_source] spawn life_fnc_tazed;
						} else {
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
			
			//Temp fix for super tasers on cops.
			if(playerSide == west && side _source == west) then {
				_damage = false;
			};
		};			
	};
};

if(((player distance (getMarkerPos "safezone_1") < 400) || 
	(player distance (getMarkerPos "safezone_2") < 400) || 
	(player distance (getMarkerPos "safezone_3") < 400) || 
	(player distance (getMarkerPos "safezone_4") < 400)) && side _source == civilian && playerSide == civilian) then 
{
	_damage = false;
};

if(((player distance (getMarkerPos "safezone_1") < 400) || 
	(player distance (getMarkerPos "safezone_2") < 400) || 
	(player distance (getMarkerPos "safezone_3") < 400) || 
	(player distance (getMarkerPos "safezone_4") < 400)) && _isVehicle && side _source == civilian && playerSide == civilian) then {
	
	vehicle player allowDamage false;
	vehicle player setFuel 1;
	vehicle player setDamage 0;
	_damage = false;
};

[] call life_fnc_hudUpdate;
_damage;