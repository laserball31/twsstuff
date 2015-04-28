/*
	File: fn_clothing_xxxx.sqf
	Author: xxxx
	
	Description:
	Master configuration file for xxx shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Mohammed's Jihadi Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["template",15340],
			["template",nil,50000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["template",15340],
			["template",nil,50000]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["template",15340],
			["template",nil,50000]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["template",15340],
			["template",nil,50000]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["template",15340],
			["template",nil,50000]
		];
	};
};