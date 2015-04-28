#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: {
		[
			// Weapons
			"RH_g18",
            "RH_33Rnd_9x19_g18",
            "RH_tec9",nil,7500],              
            "RH_32Rnd_9x19_tec",        
            "RH_muzi",              
            "RH_30Rnd_9x19_UZI",
			"HandGrenade_Stone",
            "RH_SAMR",
            "RH_M4A1_ris",
            "RH_fnp45",
            "RH_p226",
            "RH_X300",
            "RH_reflex",
            "RH_m3lr",
            "RH_SFM952V",
            "RH_spr_mbs",
            "RH_ta31rco",
            "RH_eotech553",
            "optic_Nightstalker",
            "RH_saker",
            "RH_peq15",
            "RH_15Rnd_9x19_SIG",
            "RH_12Rnd_45cal_usp",
            "RH_30Rnd_556x45_Mk262",
			"RH_ar10",
			"RH_20Rnd_762x51_AR10",
			"RH_m16a3",
			"RH_m16a4",
			"30rnd_556x45_STANAG",
			"30Rnd_556x45_Stanag_Tracer_Red",
			"RH_mk12mod1",
			"RH_compM4s",
			"RH_eotech533",
			"RH_shortdot",
			"RH_reflex",
			"RH_deagle",
            "RH_deagleg",
            "RH_deagles",
            "RH_deaglem",
            "RH_7Rnd_50_AE",
            "RH_cz75",
            "RH_16Rnd_9x19_cz",
            "RH_sw659",
            "RH_14Rnd_9x19_sw",
            "RH_usp",nil,2000],
            "RH_12Rnd_45cal_usp",
            "RH_mak",
            "RH_8Rnd_9x18_Mak",
            "RH_uspm",
            "RH_16Rnd_40cal_usp",
            "RH_m9",
            "RH_15Rnd_9x19_M9",
            "RH_m9c",
            "RH_tt33",
            "RH_8Rnd_762_tt33",            
            "RH_mk2",
            "RH_10Rnd_22LR_mk2",          
            "RH_p226",
            "RH_15Rnd_9x19_SIG",      
            "RH_p226s",
            "RH_mateba,            
            "RH_6Rnd_44_Mag",              
            "RH_python",            
            "RH_6Rnd_357_Mag",            
            "RH_mp412",                  
            "RH_bull",
            "RH_6Rnd_454_Mag",            
            "RH_bullb",                          
            "RH_ttracker",          
            "RH_6Rnd_45ACP_Mag",      
            "RH_ttracker_g",                
            "RH_fnp45",              
            "RH_15Rnd_45cal_fnp",      
            "RH_fnp45t",                  
            "RH_fn57",              
            "RH_20Rnd_57x28_FN",        
            "RH_fn57_g",                  
            "RH_fn57_t",                  
            "RH_gsh18",              
            "RH_18Rnd_9x19_gsh"
		];
	};
};