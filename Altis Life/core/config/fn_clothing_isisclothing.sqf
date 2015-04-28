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
			["U_B_SpecopsUniform_sgg",nil,17500],
			["U_O_PilotCoveralls",nil,15610],
			["U_B_Wetsuit",nil,27000],
			["U_IG_leader","Guerilla Leader",15340],
			["U_O_GhillieSuit",nil,50000],
			["U_I_GhillieSuit",nil,50000],
			["U_B_CTRG_3",nil,50000],
			["U_NikosAgedBody","Suit of Swag",5000],
			["U_O_CombatUniform_oucamo",nil,30000],
			["U_C_Scientist",nil,25000],
			["U_Competitor",nil,2500],
			["U_B_GhillieSuit",nil,15000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			["H_ShemagOpen_tan",nil,850],
			["H_Shemag_olive",nil,850],
			["H_Shemag_khk",nil,950],
			["H_ShemagOpen_khk",nil,800],
			["H_HelmetB_camo",nil,1050],
			["H_HelmetSpecB","Havoks Favorite Helmet",1000],
			["H_HelmetSpecO_ocamo",nil,1500],
			["H_BandMask_khk",nil,900],
			["H_Helmet_Kerry",nil,1000],
			["H_Cap_blu",nil,750],
			["H_Cap_red",nil,750],
			["H_Beret_red",nil,750],
			["H_Beret_grn",nil,750],
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
			["G_Balaclava_blk",nil,30],
			["G_Balaclava_combat",nil,30],
			["G_Balaclava_lowprofile",nil,30],
			["G_Balaclava_oli",nil,30],
			["G_Bandanna_aviator",nil,30],
			["G_Bandanna_beast",nil,30],
			["G_Bandanna_blk",nil,30],
			["G_Bandanna_khk",nil,30],
			["G_Bandanna_oli",nil,30],
			["G_Bandanna_shades",nil,30],
			["G_Bandanna_sport",nil,30],
			["G_Bandanna_tan",nil,30],
			["G_Combat",nil,30],
			["G_Lowprofile",nil,30],
			["G_Tactical_Black",nil,30],
			["G_Tactical_Clear",nil,30],
			["G_Aviator",nil,30],
			["G_Spectacles",nil,30],
			["G_Spectacles_Tinted",nil,30],
			["G_Squares",nil,30],
			["G_Squares_Tinted",nil,30],
			["G_Shades_Black",nil,30],
			["G_Shades_Blue",nil,30],
			["G_Shades_Green",nil,30],
			["G_Shades_Red",nil,30],
			["G_Sport_Blackred",nil,30],
			["G_Sport_BlackWhite",nil,30],
			["G_Sport_Blackyellow",nil,30],
			["G_Sport_Checkered",nil,30],
			["G_Sport_Greenblack",nil,30],
			["G_Sport_Red",nil,30],
			["G_Lady_Blue",nil,30],
			["G_Lady_Dark",nil,30],
			["G_Lady_Mirror",nil,30],
			["G_Lady_Red",nil,30],
			["G_Goggles_VR",nil,30],
			["G_Diving",nil,30],
			["G_B_Diving",nil,30],
			["G_O_Diving",nil,30],
			["G_I_Diving",nil,30]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk",nil,12500],
			["V_BandollierB_cbr",nil,4500],
			["V_Press_F",nil,4500],
			["V_HarnessOGL_gry","Suicide Vest",2500000],
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