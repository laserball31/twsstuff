/*
File: fn_RepaintVehicle.sqf
Author: MooN-Gaming

Description: Does the active repaint man....read the title!
*/
private["_index","_veh","_color","_color_index"];
if(!isNull (findDisplay 2300)) then {
_veh = nearestObject [position player, "LandVehicle"];
_color = lbcursel 2303;
_color_index = lbValue[2303,_color];
closeDialog 0;

_baseprice = 10000;  //Price for repaint
_vehicleData = _veh getVariable["vehicle_info_owners",[]];
_vehOwner = (_vehicleData select 0) select 0;
if(life_cash < _basePrice) exitWith {hint "You don't have enough cash, to pay me"};

if(isNil {_vehicleData}) exitWith {hint "Cheated car?."};
if ((getPlayerUID player) != _vehOwner) exitWith {hint "You aren't the owner!"};

		life_action_inUse = true;
		_displayName = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
		_upp = format["Lackiere %1",_displayName];
		//Setup our progress bar.
		disableSerialization;
		5 cutRsc ["life_progress","PLAIN"];
		_ui = uiNameSpace getVariable "life_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.01;
		
		while{true} do
		{
			if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
				[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};						
			sleep 0.29;
			//[player,"spraycan"] call life_fnc_globalSound; //Just if you have global sounds!

			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];			
			if(_cP >= 1) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};
		
		life_action_inUse = false;
		5 cutText ["","PLAIN"];
		player playActionNow "stop";
		if(life_interrupted) exitWith {life_interrupted = false; titleText["Cancelled","PLAIN"]; life_action_inUse = false;};
		if(player != vehicle player) exitWith {titleText["Du musst aus dem Fahrzeug aussteigen, um es lackieren zu k�nnen!","PLAIN"];};




	
		life_cash = life_cash - _basePrice;
		//Send toDB
		[[_veh,_color_index],"TON_fnc_vehicleRepaint",false,false] spawn life_fnc_MP;
		
		//Color vehicle locally
		[_veh,_color_index] call life_fnc_colorVehicle;
		
		[] call SOCK_fnc_updateRequest; //Sync silently because it's obviously silently..
	
		//hint format["Vehicle: %1 || New Color: %2 || Owner:
%3",_veh,_color_index,_vehicledata]; //Deactivated, wrong states there :-(
	
