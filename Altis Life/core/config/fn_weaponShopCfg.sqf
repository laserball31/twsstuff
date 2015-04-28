#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[	
						["FirstAidKit",nil,0],
						["Medikit","Defibrilator",0],
						["ItemGPS",nil,500],
						["Binocular",nil,2500],
						["ToolKit",nil,2500],
						["NVGoggles",nil,2500],
						["B_Carryall_oli",nil,3000],
						["V_PlateCarrier1_blk",nil,3000]
					]
				];
			};
		};
	};
	case "gits_weapons":
	{
		switch(true) do
		{
			default
			{
				["LHMC Weapon Shop",
					[
						["HandGrenade_Stone","Flashbang",5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["NVGoggles",nil,250],
						["Rangefinder",nil,50],
						["ItemGPS",nil,50],
						["ItemCompass",nil,50],
						["srifle_EBR_F",nil,10000],
						["20Rnd_762x51_Mag",nil,50],
						["srifle_LRR_F",nil,50000],
						["7Rnd_408_Mag",nil,50],
						["srifle_GM6_F","Lynx",175000],
						["5Rnd_127x108_Mag","Lynx Ammo",5000],
						["srifle_DMR_01_F",nil,20000],
						["10Rnd_762x51_Mag",nil,5000],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,50],
						["150Rnd_762x51_Box_Tracer",nil,50],
						["LMG_Mk200_F",nil,250000],
						["200Rnd_65x39_cased_Box",nil,50],
						["200Rnd_65x39_cased_Box_Tracer",nil,50],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,2500],
						["SatchelCharge_Remote_Mag",nil,15000],
						["optic_Nightstalker",nil,2000],
						["optic_tws",nil,2000],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500],
						["optic_Hamr",nil,500],
						["optic_Aco",nil,500],
						["optic_MRCO",nil,500],
						["acc_flashlight",nil,250],
						["acc_pointer_IR",nil,250],
						["arifle_MX_GL_F",nil,150000],
						["30Rnd_65x39_caseless_mag",nil,750],
						["3Rnd_HE_Grenade_shell",nil,75000],
						["3Rnd_UGL_FlareWhite_F",nil,5000],
						["3Rnd_UGL_FlareGreen_F",nil,5000],
						["3Rnd_UGL_FlareRed_F",nil,5000],
						["3Rnd_UGL_FlareYellow_F",nil,5000],
						["3Rnd_UGL_FlareCIR_F",nil,5000],
						["3Rnd_Smoke_Grenade_shell",nil,5000],
						["3Rnd_SmokeRed_Grenade_shell",nil,5000],
						["3Rnd_SmokeGreen_Grenade_shell",nil,5000],
						["3Rnd_SmokeYellow_Grenade_shell",nil,5000],
						["3Rnd_SmokePurple_Grenade_shell",nil,5000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,5000],
						["3Rnd_SmokeOrange_Grenade_shell",nil,5000],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500]
					]
				];
			};
		};
	};	
	case "isisweapons":
	{
		switch(true) do
		{
			default
			{
				["ISIS Weapon Shop",
					[
						["HandGrenade_Stone","Flashbang",5000],
						["SmokeShellBlue","Chlorine Grenade",1000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["NVGoggles",nil,250],
						["Rangefinder",nil,50],
						["ItemGPS",nil,50],
						["ItemCompass",nil,50],
						["srifle_EBR_F",nil,10000],
						["20Rnd_762x51_Mag",nil,50],
						["srifle_LRR_F",nil,50000],
						["7Rnd_408_Mag",nil,50],
						["srifle_GM6_F","Lynx",125000],
						["5Rnd_127x108_Mag","Lynx Ammo",5000],
						["srifle_DMR_01_F",nil,20000],
						["10Rnd_762x51_Mag",nil,5000],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,50],
						["150Rnd_762x51_Box_Tracer",nil,50],
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box",nil,50],
						["200Rnd_65x39_cased_Box_Tracer",nil,50],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,2500],
						["SatchelCharge_Remote_Mag",nil,15000],
						["optic_Nightstalker",nil,20000],
						["optic_tws",nil,2000],
						["optic_SOS",nil,500],
						["optic_LRPS",nil,500],
						["optic_DMS",nil,500],
						["optic_Hamr",nil,500],
						["optic_Aco",nil,500],
						["optic_MRCO",nil,500],
						["acc_flashlight",nil,250],
						["acc_pointer_IR",nil,250],
						["arifle_MX_GL_F",nil,150000],
						["30Rnd_65x39_caseless_mag",nil,750],
						["3Rnd_HE_Grenade_shell",nil,75000],
						["3Rnd_UGL_FlareWhite_F",nil,5000],
						["3Rnd_UGL_FlareGreen_F",nil,5000],
						["3Rnd_UGL_FlareRed_F",nil,5000],
						["3Rnd_UGL_FlareYellow_F",nil,5000],
						["3Rnd_UGL_FlareCIR_F",nil,5000],
						["3Rnd_Smoke_Grenade_shell",nil,5000],
						["3Rnd_SmokeRed_Grenade_shell",nil,5000],
						["3Rnd_SmokeGreen_Grenade_shell",nil,5000],
						["3Rnd_SmokeYellow_Grenade_shell",nil,5000],
						["3Rnd_SmokePurple_Grenade_shell",nil,5000],
						["3Rnd_SmokeBlue_Grenade_shell",nil,5000],
						["3Rnd_SmokeOrange_Grenade_shell",nil,5000],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500]
					]
				];
			};
		};
	};
case "bhws":
{
switch(true) do
{
case (playerSide != civilian): {"You cannot use this shop!"};
case (!license_civ_bountyh): {"You don't have an admin's approval to use this!"};
default
{
["Bounty Hunter's Shop",
[
["hgun_P07_snds_F","Stun Pistol",10000],
["16Rnd_9x21_Mag","Stun Mag",250],
["SMG_01_F","Lethal PDW",25000],
["30Rnd_45ACP_Mag_SMG_01","PDW MAGS",500],
["SmokeShellBlue","Tear Gas",5050]
]
];
};
};

};
	case "uranium":
    {
        switch(true) do
        {
            case (playerSide != civilian): {"You are not a civilian!"};
            case (!license_civ_uranium): {"You do not have the required license!"};
            default
            {
                ["Uranium Processing",
                    [
                        ["ToolKit",nil,200],
                        ["FirstAidKit",nil,100],
                        ["U_C_Scientist","Combination Anti-Radiation",50000]
                    ]
                ];
            };
        };
    }; 
	case "cop_tools":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Toolshop",
					[
						["FirstAidKit",nil,50],
						["ToolKit",nil,50],
						["Medikit","Defibrilator",2500],
						["NVGoggles",nil,2500],
						["Binocular",nil,2500],
						["Rangefinder",nil,5000],
						["ItemGPS",nil,500],
						["ItemCompass",nil,500]
					]
				];
			};
		};
	};
	
	case "cop_sergeant_tools":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Sergeant!"};
			default
			{
				["Altis Cop Toolshop",
					[
						["HandGrenade_Stone","Flashbang",5000],
						["FirstAidKit",nil,500],
						["ToolKit",nil,500],
						["Medikit","Defibrilator",0],
						["NVGoggles",nil,2500],
						["Binocular",nil,2500],
						["Rangefinder",nil,5000],
						["ItemGPS",nil,50],
						["ItemCompass",nil,50],
						["SmokeShell",nil,1000],
						["SmokeShellRed",nil,1000],
						["SmokeShellGreen",nil,1000],
						["SmokeShellYellow",nil,1000],
						["SmokeShellPurple",nil,1000],
						["SmokeShellBlue","Chlorine Grenade",1000],
						["SmokeShellOrange",nil,1000]
					]
				];
			};
		};
	};
	
	case "cop_constable":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Constable Shop",
					[
						["SMG_02_F","Taser Rifle",5000],
						["30Rnd_9x21_Mag","Taser Rifle Magazine",500],
						["hgun_P07_snds_F","Taser Pistol",2000],
						["hgun_P07_F",nil,750],
						["hgun_PDW2000_F",nil,5000],
						["16Rnd_9x21_Mag",nil,500],
						["30Rnd_9x21_Mag",nil,750],
						["muzzle_snds_L",nil,3500],
						["arifle_TRG21_F",nil,50000],
						["arifle_Mk20_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,150],
						["arifle_sdar_F",nil,50000],
						["20Rnd_556x45_UW_mag",nil,150],
						["SMG_01_F",nil,50000],
						["30Rnd_45ACP_Mag_SMG_01",nil,500],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,750],
						["optic_ACO_grn",nil,1500],
						["muzzle_snds_acp",nil,3500],
						["muzzle_snds_M",nil,3500]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 2): {"You are not a Sergeant!"};
			default
			{
				["Altis Sergeant Shop",
					[
						["arifle_MX_SW_F",nil,50000],
						["arifle_MXC_F",nil,50000],
						["arifle_MXM_F",nil,50000],
						["arifle_MX_F",nil,50000],
						["100Rnd_65x39_caseless_mag",nil,750],
						["100Rnd_65x39_caseless_mag_Tracer",nil,750],
						["30Rnd_65x39_caseless_mag",nil,550],
						["30Rnd_65x39_caseless_mag_Tracer",nil,650],
						["arifle_Katiba_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,650],
						["optic_Holosight",nil,1500],
						["optic_SOS",nil,5000],
						["optic_DMS",nil,5000],
						["optic_NVS",nil,7500],
						["optic_Aco",nil,1500],
						["optic_MRCO",nil,2500],
						["optic_Arco",nil,3500],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_H",nil,3500]
					]
				];
			};
		};
	};

	case "cop_inspector":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 3): {"You are not an Inspector!"};
			default
			{
				["Altis Inspector Shop",
					[
						["srifle_EBR_F",nil,75000],
						["20Rnd_762x51_Mag",nil,750],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,7500],
						["optic_DMS",nil,6500],
						["optic_NVS",nil,6500],
						["optic_Hamr",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRCO",nil,2500],
						["optic_Arco",nil,3500],
						["muzzle_snds_B",nil,3500],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500]
					]
				];
			};
		};
	};
	
	case "cop_superintendent":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 4): {"You are not a Superintendent!"};
			default
			{
				["Altis Superintendent Shop",
					[
						["LMG_Mk200_F",nil,100000],
						["200Rnd_65x39_cased_Box",nil,150],
						["200Rnd_65x39_cased_Box_Tracer",nil,150],
						["optic_SOS",nil,1500],
						["optic_LRPS",nil,1500],
						["optic_DMS",nil,1500],
						["optic_NVS",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Arco",nil,1500],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["muzzle_snds_H_MG",nil,3500],
						["Laserdesignator",nil,10000],
						["Laserbatteries",nil,500]
					]
				];
			};
		};
	};
		
	case "cop_military":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 5): {"You are not Military!"};
			default
			{
				["Altis Military Shop",
					[
						["srifle_LRR_F",nil,150000],
						["7Rnd_408_Mag",nil,150],
						["srifle_DMR_01_F",nil,50000],
						["10Rnd_762x51_Mag",nil,150],
						["LMG_Zafir_F",nil,150000],
						["150Rnd_762x51_Box",nil,150],
						["150Rnd_762x51_Box_Tracer",nil,150],
						["launch_RPG32_F",nil,250000],
						["RPG32_F",nil,25000],
						["optic_SOS",nil,1500],
						["optic_LRPS",nil,1500],
						["optic_DMS",nil,1500],
						["optic_NVS",nil,1500],
						["optic_Hamr",nil,1500],
						["optic_Aco",nil,1500],
						["optic_MRCO",nil,1500],
						["optic_Arco",nil,1500],
						["acc_flashlight",nil,1500],
						["acc_pointer_IR",nil,1500],
						["SatchelCharge_Remote_Mag",nil,50000]
					]
				];
			};
		};
	};
	
	case "cop_gits":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 6): {"You are not LHMC-PRO!"};
			default
			{
				["LHMC Cop Shop",
					[
						["srifle_GM6_F","Lynx",250000],
						["5Rnd_127x108_Mag","Lynx Ammo",2500],
						["5Rnd_127x108_APDS_Mag","Lynx APDS Ammo",5000],
						["optic_Nightstalker",nil,8000],
						["optic_tws",nil,7000],
						["LMG_Zafir_F",nil,100000],
						["150Rnd_762x51_Box",nil,500],
						["150Rnd_762x51_Box_Tracer",nil,500],
						["launch_RPG32_F",nil,100000],
						["RPG32_F",nil,25000],
						["RPG32_HE_F",nil,30000]
					]
				];
			};
		};
	};

	case "rebelhq":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,250],
						["arifle_MX_SW_F",nil,30000],
						["arifle_MXC_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1250],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,150],
						["srifle_EBR_F",nil,60000],
						["20Rnd_762x51_Mag",nil,250],
						["srifle_DMR_01_F",nil,80000],
						["LMG_Zafir_pointer_F",nil,200000],
						["150Rnd_762x51_Box",nil,1000],
						["150Rnd_762x51_Box_Tracer",nil,1350],
						["10Rnd_762x51_Mag",nil,1750],
						["LMG_Mk200_F",nil,175000],
						["200Rnd_65x39_cased_Box",nil,1500],
						["200Rnd_65x39_cased_Box_Tracer",nil,1500],
						["optic_ACO_grn",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_DMS",nil,5000],
						["muzzle_snds_M",nil,3500],
						["muzzle_snds_H",nil,3500],
						["muzzle_snds_B",nil,3500],
						["muzzle_snds_H_MG",nil,3500],
						["acc_pointer_IR",nil,3000],
						["acc_flashlight",nil,3000],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,2500],
						["NVGoggles",nil,2500],
						["Binocular",nil,2500],
						["ItemGPS",nil,2500],
						["ItemCompass",nil,2500],
						["Rangefinder",nil,2500]

					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_TRG21_F",nil,50000],
						["30Rnd_556x45_Stanag",nil,250],
						["arifle_MX_SW_F",nil,30000],
						["arifle_MXC_F",nil,30000],
						["100Rnd_65x39_caseless_mag",nil,1000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,1250],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,150],
						["srifle_EBR_F",nil,60000],
						["20Rnd_762x51_Mag",nil,250],
						["srifle_DMR_01_F",nil,80000],
						["LMG_Zafir_pointer_F",nil,90000],
						["150Rnd_762x51_Box",nil,300],
						["150Rnd_762x51_Box_Tracer",nil,350],
						["10Rnd_762x51_Mag",nil,250],
						["LMG_Mk200_F",nil,175000],
						["200Rnd_65x39_cased_Box",nil,750],
						["200Rnd_65x39_cased_Box_Tracer",nil,750],
						["optic_ACO_grn",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_DMS",nil,5000],
						["muzzle_snds_M",nil,3500],
						["muzzle_snds_H",nil,3500],
						["muzzle_snds_B",nil,3500],
						["muzzle_snds_H_MG",nil,3500],
						["acc_pointer_IR",nil,3000],
						["acc_flashlight",nil,3000],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,2500],
						["NVGoggles",nil,2500],
						["Binocular",nil,2500],
						["ItemGPS",nil,2500],
						["ItemCompass",nil,2500],
						["Rangefinder",nil,2500]

					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["V_Rangemaster_belt",nil,10000],
						["hgun_Rook40_F",nil,5000],
						["SMG_02_F",nil,10500],
						["hgun_PDW2000_F",nil,25000],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,6000],
						["9Rnd_45ACP_Mag",nil,100],
						["hgun_Pistol_heavy_01_F",nil,6500],
						["11Rnd_45ACP_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,6500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_Pistol_Signal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,100],
						["6Rnd_RedSignal_F",nil,100],
						["arifle_sdar_F",nil,25000],
						["20Rnd_556x45_UW_mag",nil,100],
						["optic_ACO_grn_smg",nil,2500],
						["optic_MRD",nil,2500],
						["optic_Yorris",nil,2500],
						["optic_Holosight_smg",nil,2500],
						["muzzle_snds_L",nil,1500],
						["muzzle_snds_acp",nil,1900]						
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["V_Rangemaster_belt",nil,10000],
						["B_Carryall_cbr",nil,25000],
						["hgun_Rook40_F",nil,5000],
						["SMG_02_F",nil,7500],
						["hgun_PDW2000_F",nil,7500],
						["16Rnd_9x21_Mag",nil,100],
						["30Rnd_9x21_Mag",nil,100],
						["hgun_ACPC2_F",nil,6000],
						["9Rnd_45ACP_Mag",nil,100],
						["hgun_Pistol_heavy_01_F",nil,6500],
						["11Rnd_45ACP_Mag",nil,100],
						["hgun_Pistol_heavy_02_F",nil,6500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["hgun_Pistol_Signal_F",nil,1000],
						["6Rnd_GreenSignal_F",nil,100],
						["6Rnd_RedSignal_F",nil,100],
						["optic_ACO_grn_smg",nil,2500],
						["optic_MRD",nil,2500],
						["optic_Yorris",nil,2500],
						["optic_Holosight_smg",nil,2500],
						["muzzle_snds_L",nil,1500],
						["muzzle_snds_acp",nil,1900],
						["arifle_TRG21_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["arifle_MX_SW_F",nil,50000],
						["arifle_MXC_F",nil,50000],
						["100Rnd_65x39_caseless_mag",nil,750],
						["100Rnd_65x39_caseless_mag_Tracer",nil,750],
						["30Rnd_65x39_caseless_mag",nil,250],
						["30Rnd_65x39_caseless_mag_Tracer",nil,250],
						["arifle_Katiba_F",nil,20000],
						["30Rnd_65x39_caseless_green",nil,150],
						["srifle_EBR_F",nil,50000],
						["20Rnd_762x51_Mag",nil,250],
						["srifle_DMR_01_F",nil,70000],
						["10Rnd_762x51_Mag",nil,250],
						["LMG_Mk200_F",nil,95000],
						["200Rnd_65x39_cased_Box",nil,750],
						["200Rnd_65x39_cased_Box_Tracer",nil,750],
						["srifle_LRR_F",nil,150000],
						["7Rnd_408_Mag",nil,150],
						["LMG_Zafir_F",nil,200000],
						["150Rnd_762x51_Box",nil,150],
						["150Rnd_762x51_Box_Tracer",nil,150],
						["launch_RPG32_F",nil,300000],
						["RPG32_F",nil,10000],
						["SatchelCharge_Remote_Mag",nil,65000],
						["optic_ACO_grn",nil,5000],
						["optic_Aco",nil,5000],
						["optic_Hamr",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_MRCO",nil,5000],
						["optic_SOS",nil,5000],
						["optic_LRPS",nil,5000],
						["optic_DMS",nil,5000],
						["muzzle_snds_M",nil,3500],
						["muzzle_snds_H",nil,3500],
						["muzzle_snds_B",nil,3500],
						["muzzle_snds_H_MG",nil,3500],
						["acc_pointer_IR",nil,3000],
						["acc_flashlight",nil,3000],
						["ToolKit",nil,2500],
						["FirstAidKit",nil,2500],
						["NVGoggles",nil,2500],
						["Binocular",nil,2500],
						["ItemGPS",nil,2500],
						["ItemCompass",nil,2500],
						["Rangefinder",nil,2500]

					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["FirstAidKit",nil,500],
				["ToolKit",nil,2500],
				["Medikit",nil,2500],
				["NVGoggles",nil,2500],
				["Binocular",nil,2500],
				["Rangefinder",nil,5000],
				["ItemGPS",nil,500],
				["ItemCompass",nil,500],
				["Chemlight_red",nil,100],
				["Chemlight_yellow",nil,100],
				["Chemlight_green",nil,100],
				["Chemlight_blue",nil,100]
			]
		];
	};
};
