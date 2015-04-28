#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",20000],
			["C_Kart_01_Fuel_F",20000],
			["C_Kart_01_Red_F",20000],
			["C_Kart_01_Vrana_F",20000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Quadbike_01_F",1000],
			["C_Hatchback_01_F",3000],
			["C_Hatchback_01_sport_F",5000],
			["C_SUV_01_F",10000],
			["I_Truck_02_medical_F",25000],
			["O_Truck_03_medical_F",45000],
			["B_Truck_01_medical_F",60000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",200000],
			["O_Heli_Light_02_unarmed_F",300000],
			["O_Heli_Transport_04_medevac_F",500000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",15000],
			["C_Hatchback_01_sport_F",50000],
			["C_Offroad_01_F",25000],
			["C_SUV_01_F",40000],
			["C_Hatchback_01_F",50000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["B_G_Van_01_transport_F",80000],
			["O_Truck_03_fuel_F",300000],
			["O_Truck_03_repair_F",300000],
			["B_Truck_01_transport_F",350000],
			["O_Truck_03_device_F",500000]
		];	
	};
	
	case "reb_carhq":
	{
		_return =
		[
			["B_Quadbike_01_F",10000],
			["O_MRAP_02_F",250000],
			["C_SUV_01_F",45000],
			["C_Hatchback_01_sport_F",35000],
			["O_G_Offroad_01_armed_F",1000000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",350000],
			["B_Truck_01_transport_F",350000],
			["O_Truck_03_device_F",500000],
			
			["I_MRAP_03_F",300000],
			["B_Heli_Light_01_F",300000],
			["I_Heli_light_03_unarmed_F",500000],
			["I_Heli_Transport_02_F",500000],
			["O_Heli_Attack_02_F",500000],
			["B_MRAP_01_hmg_F",4000000],
			["B_Heli_Transport_01_camo_F",6000000],
			["B_Heli_Transport_03_unarmed_F",2500000]
		];
	};
	
	case "reb_car":
	{
		_return =
		[
			["O_MRAP_02_F",250000],
			["O_G_Offroad_01_armed_F",1000000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",350000],
			["B_Truck_01_transport_F",350000],
			["O_Truck_03_device_F",500000],
			["I_MRAP_03_F",300000],
			["B_Heli_Light_01_F",300000],
			["I_Heli_light_03_unarmed_F",500000],
			["I_Heli_Transport_02_F",500000],
			["O_Heli_Attack_02_F",500000],
			["B_MRAP_01_hmg_F",4000000],
			["B_Heli_Transport_03_unarmed_F",2500000]
		];
	};
	
	case "cop_car":
	{
		_return set[count _return,["C_Offroad_01_F",25000]];
		_return set[count _return,["C_SUV_01_F",25000]];
		if(__GETC__(life_coplevel) > 1) then
		{
		_return set[count _return,["C_Hatchback_01_sport_F",30000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["B_MRAP_01_F",300000]];
			_return set[count _return,["I_MRAP_03_F",300000]];
		};
				if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,["B_MRAP_01_hmg_F",750000]];
			_return set[count _return,["I_MRAP_03_hmg_F",250000]];
		};
		if(__GETC__(life_adminlevel) > 2) then
		{
			_return set[count _return,["I_MRAP_03_hmg_F",250000]];
			_return set[count _return,["I_MRAP_03_gmg_F",250000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",300000],
			["O_Heli_Light_02_unarmed_F",450000],
			["O_Heli_Transport_04_F",500000],
			["O_Heli_Transport_04_covered_F",750000]
		];
	};
	
	case "jet_air":
	{
		_return =
		[
			["B_Plane_CAS_01_F",60000000],
			["O_Plane_CAS_02_F",60000000]
		];
	};
	
	case "cop_air":
	{
		_return set[count _return,["B_Heli_Light_01_F",250000]];
		_return set[count _return,["O_Heli_Light_02_unarmed_F",300000]];
		_return set[count _return,["I_Heli_Transport_02_F",450000]];
		_return set[count _return,["B_Heli_Transport_03_unarmed_F",500000]];
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,["B_Heli_Transport_01_F",450000]];
		};
		if(__GETC__(life_coplevel) > 3) then
		{
			_return set[count _return,["B_Heli_Attack_01_F",750000]];
		};
	};
	
	case "cop_airhq":
	{
		
		if(__GETC__(life_coplevel) > 2) then
		{
		_return set[count _return,["B_Heli_Light_01_F",250000]];
	    };
		if(__GETC__(life_coplevel) > 3) then
		{
		_return set[count _return,["O_Heli_Light_02_unarmed_F",300000]];
		_return set[count _return,["I_Heli_Transport_02_F",450000]];
		_return set[count _return,["B_Heli_Transport_01_F",450000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
		_return set[count _return,["B_Heli_Attack_01_F",750000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000],
			["B_SDV_01_F",100000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["C_Boat_Civil_01_police_F",20000],
			["B_SDV_01_F",100000],
			["O_G_Boat_Transport_01_F",300000]
		];
	};
};

_return;
