/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {5000}; //Drivers License cost
	case "boat": {5000}; //Boating license cost
	case "pilot": {75000}; //Pilot/air license cost
	case "gun": {10000}; //Firearm/gun license cost
	case "stiller":{50000};
	case "liquor":{100000};
	case "bottler":{100000};
	case "mash":{100000};
	case "dive": {25000}; //Diving license cost
	case "oil": {75000}; //Oil processing license cost
	case "cair": {150000}; //Cop Pilot License cost
	case "swat": {250000}; //Swat License cost
	case "cg": {5000}; //Coast guard license cost
	case "heroin": {75000}; //Heroin processing license cost
	case "marijuana": {55000}; //Marijuana processing license cost
	case "uranium": {800000}; // Add this
	case "medmarijuana": {30000}; //Medical Marijuana processing license cost
	case "gang": {25000}; //Gang license cost
	case "rebel": {1200000}; //Rebel training cost
	case "truck": {20000}; //Truck license cost
	case "diamond": {70000};
	case "salt": {20000};
	case "cocaine": {80000};
	case "sand": {25000};
	case "iron": {27500};
	case "copper": {27500};
	case "cement": {12500};
	case "mair": {15000};
	case "bountyh": {500000};
	case "home": {350000};
	case "meth": {250000};
	case "opfor": {1000000}; //where 250000 is the price offcourse
};