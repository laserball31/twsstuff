#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret set[count _ret,["U_Rangemaster","Cop Uniform",25]];
		_ret set[count _ret,["U_B_Wetsuit",nil,1250]];
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["U_B_CombatUniform_mcam_worn",nil,550]];
			_ret set[count _ret,["U_B_survival_uniform",nil,1250]];
			_ret set[count _ret,["U_B_HeliPilotCoveralls",nil,1250]];
			_ret set[count _ret,["U_B_CombatUniform_mcam_tshirt",nil,350]];
			_ret set[count _ret,["U_B_CTRG_1",nil,1250]];
			_ret set[count _ret,["U_B_CTRG_3",nil,1250]];
			
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["U_IG_leader",nil,5000]];
		};
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["U_O_GhillieSuit",nil,10000]];
			_ret set[count _ret,["U_I_GhillieSuit",nil,10000]];
			_ret set[count _ret,["U_B_GhillieSuit",nil,10000]];
		};
	};
	
	//Hats
	case 1:
	{
		_ret set[count _ret,["H_Beret_blk_POLICE",nil,75]];
		_ret set[count _ret,["H_Beret_02",nil,75]];
		_ret set[count _ret,["H_HelmetSpecB",nil,150]];
		_ret set[count _ret,["H_Cap_tan_specops_US",nil,75]];
		_ret set[count _ret,["H_Cap_headphones",nil,75]];
		
				 
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["H_HelmetB_plain_mcamo",nil,75]];
			_ret set[count _ret,["H_Booniehat_mcamo",nil,120]];
			_ret set[count _ret,["H_Watchcap_blk",nil,120]];
		};
		
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret set[count _ret,["H_MilCap_mcamo",nil,100]];
			_ret set[count _ret,["H_HelmetCrew_I",nil,100]];
			_ret set[count _ret,["H_HelmetSpecO_blk",nil,100]];
			_ret set[count _ret,["H_HelmetB_light",nil,100]];
			_ret set[count _ret,["H_PilotHelmetHeli_O",nil,100]];
			_ret set[count _ret,["H_CrewHelmetHeli_O",nil,100]];
		};
		
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret set[count _ret,["H_Beret_Colonel",nil,100]];
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55],
			["G_Diving",nil,250],
			["G_Bandanna_blk",nil,100]
		];
	};
	
	//Vest
	case 3:
	{
		_ret set[count _ret,["V_Rangemaster_belt",nil,800]];
		_ret set[count _ret,["V_RebreatherB",nil,1000]];
		
		if(__GETC__(life_coplevel) > 1) then
		{
			_ret set[count _ret,["V_PlateCarrier2_rgr",nil,1500]];
			_ret set[count _ret,["V_PlateCarrier1_blk",nil,1500]];
		};
		
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret set[count _ret,["V_TacVest_blk_POLICE",nil,1500]];
			_ret set[count _ret,["V_TacVestCamo_khk",nil,1500]];
		};
		
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret set[count _ret,["V_PlateCarrierIAGL_dgtl",nil,2500]];
			_ret set[count _ret,["V_PlateCarrierH_CTRG",nil,2500]];
		};
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_FieldPack_ocamo",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Bergen_blk",nil,2500],
			["B_Carryall_cbr",nil,3500],
			["B_Carryall_khk",nil,3500],
			["B_Carryall_mcamo",nil,3500],
			["B_Carryall_ocamo",nil,3500],
			["B_Carryall_oucamo",nil,3500],
			["B_Carryall_oli",nil,3500]
		];
	};
};

_ret;