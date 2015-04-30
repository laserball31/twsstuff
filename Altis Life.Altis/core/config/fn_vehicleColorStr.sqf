/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Red";};
			case 1: {_color = "Yellow";};
			case 2: {_color = "White";};
			case 3: {_color = "Blue";};
			case 4: {_color = "Dark Red";};
			case 5: {_color = "Blue / White"};
			case 6: {_color = "Black"};
			case 7: {_color = "Black"};
			case 8: {_color = "Taxi"};
			case 9: {_color = "Police"};
			case 10: {_color = "SWAT"};
			case 11: {_color = "UK"};
			case 12: {_color = "Police 2"};
			case 13: {_color = "AMC Offroad"};
			case 14: {_color = "Old Blue Racer"};
			case 15: {_color = "Old Green"};
			case 16: {_color = "Old Orange"};
			case 17: {_color = "Old Red"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Green";};
			case 2: {_color = "Blue";};
			case 3: {_color = "Dark Blue";};
			case 4: {_color = "Yellow";};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "Black"};
			case 8: {_color = "Orange/White Styled"};
			case 9: {_color = "Nature"};
			case 10: {_color = "Cop"};
			case 11: {_color = "UK"};
			case 12: {_color = "Medic Red"};
			case 13: {_color = "Old Grey"};
			case 14: {_color = "Old Green"};
			case 15: {_color = "Old Purple"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "Green"};
			case 6: {_color = "Cop"};
			case 7: {_color = "Orange/White Styled"};
			case 8: {_color = "Nature"};
			case 9: {_color = "UK"};
			case 10: {_color = "Medic Red"};
			case 11: {_color = "KBLOCK"};
			case 12: {_color = "RedGull"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red"};
			case 1: {_color = "Black"};
			case 2: {_color = "Silver"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Cube"};
			case 5: {_color = "Poly"};
			case 6: {_color = "Cop"};
			case 7: {_color = "UK"};
			case 8: {_color = "Medic Red"};
			case 9: {_color = "Medic White"};
			case 10: {_color = "Sticker"};
			case 11: {_color = "Ambulance"};
			case 12: {_color = "Blue Flames"};
			case 13: {_color = "Ferrari"};
			case 14: {_color = "Old Blue"};
			case 15: {_color = "Old Grey"};
			case 16: {_color = "Old Orange"};
			case 17: {_color = "Old Red"};
			case 18: {_color = "Pimp Leopard"};
			case 19: {_color = "Nyan Cat"};
			case 20: {_color = "Hot Car"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
			case 9: {_color = "Custom Brown"};
			case 10: {_color = "Custom Blue"};
			case 11: {_color = "Custom Green"};
			case 12: {_color = "Custom Red"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "Police Black/White"};
			case 15: {_color = "Police Yellow/Blue"};
			case 16: {_color = "Police Chopper"};
			case 17: {_color = "Police Chopper 2"};
			case 18: {_color = "EMS Yellow/Blue"};
			case 19: {_color = "EMS Red"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS Red"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Black"};
			case 2: {_color = "Police"};
			case 3: {_color = "SWAT"};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "Camo"};
			case 2: {_color = "Pirate 1"};
			case 3: {_color = "Pirate 2"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "NATO"};
			case 1: {_color = "Digital"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
			case 2: {_color = "Ambulance"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "NATO"};
			case 3: {_color = "Ion"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
};

_color;