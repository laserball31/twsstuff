/*
	File: fn_clothing_ems.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"EMS Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["A3L_EMT1",EMT Medic Uniform 1,5000],
			["A3L_EMT2",EMT Medic Uniform 2,5000],
			["EMTRM_uni",EMT Medic Uniform 3,5000],
			["emt_Uni1",EMT Medic Uniform 4,5000],
			["emt_Uni3",EMT Medic Uniform 5,5000],
			["emsoff_uni",EMS Off Duty,5000],
			["A3L_Worker_Outfit",Worker Uniform,5000],
			["fire_uni1",Fire Uniform 1,5000],
			["fire_uni2",Fire Uniform 2,5000],
			["fireoff_uni",Fire Off Duty,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_firedeptmask",Fire Rescue Mask,850],
			["A3L_medic_helmet",EMS Helmet,850],
			["a3l_hardhat",Hard Hat,850]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			//["G_Shades_Black",nil,250]
		];
	};
	
	//Vest
	case 3:
	{
		[
			//["V_TacVest_khk",nil,12500],
			//["V_BandollierB_cbr",nil,4500],
			//["V_HarnessO_brn",nil,7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_khk",nil,5000]
		];
	};
};