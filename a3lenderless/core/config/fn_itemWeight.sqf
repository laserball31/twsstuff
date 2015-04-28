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
	case "jack": {1};
	case "wine": {1};
    case "beer": {1};	
	case "heroinu": {6};
	case "heroinp": {4};
	case "marijuana": {3};
	case "apple": {1};
	case "water": {1};
	case "burgers": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "speedbomb": {10};
	case "mackerel": {4};
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
	case "wheat": {2};
	case "sunflower": {2};
	case "corn": {3};
	case "bean": {2};
	case "cotton": {2};
	case "olive": {2};
	case "opium": {2};
	case "cannabis": {2};
	case "pumpkin": {2};
	case "wheat seed": {0.5};
	case "sunflower seed": {0.5};
	case "corn seed": {0.5};
	case "bean seed": {0.5};
	case "cotton seed": {0.5};
	case "olive seed": {0.5};
	case "opium seed": {0.5};
	case "cannabis seed": {0.5};
	case "pumpkin seed": {0.5};
	case "wall": {1};
	case "cigarette": {1};
	case "RoadConeStripB": {10};
	case "RoadConeB": {2};
	case "RoadConeStrip": {10};
	case "RoadCone": {2};
	case "RoadBlockWood": {23};
	case "RoadBlockConc": {46};
	case "RoadBlockRebel": {46};
	case "BarGate": {23};
	default {1};
};
