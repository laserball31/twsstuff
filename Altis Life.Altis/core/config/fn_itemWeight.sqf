/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {7};
	case "oilp": {6};
	case "heroinu": {6};
	case "rye": {2};
	case "hops": {2};
	case "yeast": {2};
	case "cornmeal": {2};
	case "mash": {2};
	case "whiskey": {4};
	case "beerp": {4};
	case "moonshine": {5};
	case "bottledwhiskey": {5};
	case "bottledbeer": {5};
	case "bottledshine": {5};
	case "bottles": {1};
	case "kidney": {15};//15 is the weight
    case "handcuffs": {1};
    case "handcuffkeys": {1};
	case "heroinp": {4};
	case "cannabis": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "debitcard": {0};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "puranium": {5}; // Add this
    case "ipuranium": {3}; // Add this
    case "uranium1": {2}; // Add this
    case "uranium2": {1}; // Add this
    case "uranium3": {4}; // Add this
    case "uranium4": {4}; // Add this
    case "uranium": {4}; // Add this
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {4};
	case "ironore": {5};
	case "copper_r": {3};
	case "iron_r": {3};
	case "sand": {3};
	case "salt": {3};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {4};
	case "diamondc": {2};
	case "cocaine": {6};
	case "cocainep": {4};
	case "spikeStrip": {15};
	case "rock": {6};
	case "cement": {5};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	case "methu": {6};
	case "methp": {4};
	default {1};
};
