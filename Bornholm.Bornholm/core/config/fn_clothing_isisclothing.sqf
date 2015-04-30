/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"ISIS Clothing Shop"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			["U_IG_Guerilla1_1",nil,5000],
			["U_I_G_Story_Protagonist_F",nil,7500],
			["U_I_G_resistanceLeader_F",nil,11500],
			["U_O_SpecopsUniform_ocamo",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_B_Wetsuit",nil,27000],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000],
			["U_O_CombatUniform_oucamo",nil,70000],
			["U_C_Scientist",nil,25000],
			["U_Competitor",nil,2500],
			["U_B_GhillieSuit",nil,80000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetB_camo",nil,950],
			["H_HelmetSpecB","Havoks Favorite Helmet",1000],
			["H_BandMask_khk",nil,900],
			["H_Helmet_Kerry",nil,1000],
			["H_Cap_blu",nil,750],
			["H_Cap_red",nil,750],
			["H_Cap_grn",nil,750],
			["H_HelmetO_ocamo",nil,2500],
			["H_PilotHelmetFighter_B",nil,2700],
			["H_Beret_02",nil,1000],
			["H_MilCap_oucamo",nil,1200],
			["H_Bandanna_camo",nil,650]
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_HarnessOGL_gry","Allah Akhbar Vest",2500000],
			["V_PlateCarrierIAGL_dgtl",nil,7500],
			["V_PlateCarrierH_CTRG",nil,7500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
			["B_AssaultPack_cbr",nil,2500],
			["B_Kitbag_mcamo",nil,4500],
			["B_TacticalPack_oli",nil,3500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Bergen_sgg",nil,4500],
			["B_Kitbag_cbr",nil,4500],
			["B_Carryall_cbr",nil,5000],
			["B_Carryall_khk",nil,5000],
			["B_Carryall_mcamo",nil,5000],
			["B_Carryall_ocamo",nil,5000],
			["B_Carryall_oucamo",nil,5000],
			["B_Carryall_oli",nil,5000]
		];
	};
};