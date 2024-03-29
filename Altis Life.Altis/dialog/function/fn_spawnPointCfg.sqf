/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_6","Great Wall Outpost","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_jail","Jail","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		//GITS base spawn
		if((getPlayerUID player) in [
			"76561198082727540",
			"76561198050219447",
			"76561198045828460"
		])then {
				_return set[count _return,["gits_spawn","Ghost Hotel","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
				_return set[count _return,["gits_village","GITS Village","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_10","Anthrakia - Lawless","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_9","Oreokastro","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]			
		];
		
		if(license_civ_rebel) then
		{
			_return set[count _return,["reb_spawn_1","Rebel North","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["reb_spawn_2","Rebel West","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["reb_spawn_3","Rebel South","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["reb_spawn_4","Rebel East","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
			_return set[count _return,["reb_spawn_hq","ISIS Headquarters","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
				
		//GITS base spawn
		if((getPlayerUID player) in [
			"76561198082727540",
			"76561198050219447",
			"76561198045828460"
			
		])then {
				_return set[count _return,["gits_cave","Bat Cave","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
				_return set[count _return,["gits_spawn","Ghost Hotel","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
				_return set[count _return,["gits_village","LHMC Village","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
		
		//GITS base spawn
		if((getPlayerUID player) in [
			"76561198082727540",
			"76561198050219447",
			"76561198045828460"
		])then {
				_return set[count _return,["gits_spawn","Ghost Hotel","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};
	};
};


_return;