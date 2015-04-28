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
			["cop_spawn_1","Roenne HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Nexoe HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Aakirkeby HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
//			["Federal_Reserve","Federal Reserve (For testing purposes only, no cheating you lazy sacks of shit)","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_7","Sheriff's Office","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"]
		];

	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Roenne","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Nexoe","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]//,
//			["civ_spawn_3","Aakirkeby","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
//			["civ_spawn_4","Pedersker","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return set[count _return,[format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"]];
			} foreach life_houses;
		};
		
		if (license_civ_rebel) then {
			_return set[count _return,["rebel_licence_spawn1","ISIS","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
		};


	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Roenne Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Airport Regional Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Strandmarken Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_clinic_spawn_1","Aakirkeby Clinic","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_clinic_spawn_3","Hasle Dionysios Clinic","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],			
			["medic_clinic_spawn_4","Paros Clinic","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]	
		];
	};
};

_return;