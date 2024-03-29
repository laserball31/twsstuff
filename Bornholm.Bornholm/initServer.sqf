/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
master_group attachTo[bank_obj,[0,0,0]];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

//Spawn the new hospitals.
{
	_hs = createVehicle ["Land_Hospital_main_F", [0,0,0], [], 0, "NONE"];
	_hs setDir (markerDir _x);
	_hs setPosATL (getMarkerPos _x);
	_var = createVehicle ["Land_Hospital_side1_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [4.69775,32.6045,-0.1125]];
	detach _var;
	_var = createVehicle ["Land_Hospital_side2_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [-28.0336,-10.0317,0.0889387]]; 
	detach _var;
} foreach ["hospital_2","hospital_3"];

//Spawn in fishingboat wreck
{
	_fw = createVehicle ["Land_UWreck_FishingBoat_F", [0,0,0], [], 0, "NONE"];
	_fw setDir (markerDir _x);
	_fw setPosATL (getMarkerPos _x);
	_var = createVehicle ["Land_Suitcase_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_fw, [-5,-3,0]]; 
	detach _var;
} foreach ["shipwreck_1","shipwreck_2","shipwreck_3","shipwreck_4","shipwreck_5"];

[8,true,true,12] execFSM "core\fsm\timeModule.fsm";