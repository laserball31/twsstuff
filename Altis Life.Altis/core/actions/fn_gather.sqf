/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4",
				  "peaches_1","peaches_2","peaches_3","peaches_4",
				  "heroin_1","heroin_2","heroin_3","heroin_4","heroin_5","heroin_6",
				  "cocaine_1","cocaine_2","cocaine_3","cocaine_4","cocaine_5","cocaine_6",
				  "weed_1","weed_2","weed_3","weed_4","weed_5","weed_6",
				  "meth_1","meth_2","meth_3","meth_4","meth_5","meth_6",
				  "lead_1",
				  "hops_1",
				  "rye_1",
				  "yeast_1",
				  "iron_1",
				  "uranium_1",
				  "salt_1",
				  "sand_1",
				  "diamond_1",
				  "oil_1","oil_2",
				  "rock_1"];
_zone = "";

if(life_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	/*hint localize "STR_NOTF_notNearResource";*/
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1","heroin_2","heroin_3","heroin_4","heroin_5","heroin_6"]): {_gather = "heroinu"; _val = 3;};
	case (_zone in ["meth_1","meth_2","meth_3","meth_4","meth_5","meth_6"]): {_gather = "methu"; _val = 3;};
	case (_zone in ["cocaine_1","cocaine_2","cocaine_3","cocaine_4","cocaine_5","cocaine_6"]): {_gather = "cocaine"; _val = 3;};
	case (_zone in ["weed_1","weed_2","weed_3","weed_4","weed_5","weed_6"]): {_gather = "cannabis"; _val = 3;};
	case (_zone in ["lead_1"]): {_gather = "copperore"; _val = 3};
	case (_zone in ["rye_1"]): {_gather = "rye"; _val = 3};
	case (_zone in ["hops_1"]): {_gather = "hops"; _val = 3};
	case (_zone in ["yeast_1"]): {_gather = "yeast"; _val = 3};
	case (_zone in ["iron_1"]): {_gather = "ironore"; _val = 3};
	case (_zone in ["salt_1"]): {_gather = "salt"; _val = 3};
	case (_zone in ["uranium_1"]): {_gather = "uranium1"; _val = 2};
	case (_zone in ["sand_1"]): {_gather = "sand"; _val = 3};
	case (_zone in ["diamond_1"]): {_gather = "diamond"; _val = 3};
	case (_zone in ["oil_1","oil_2"]): {_gather = "oilu"; _val = 3};
	case (_zone in ["rock_1"]): {_gather = "rock"; _val = 3};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {/*hint localize "STR_NOTF_GatherVeh";*/};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
