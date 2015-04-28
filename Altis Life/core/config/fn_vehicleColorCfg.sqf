/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["#(argb,8,8,3)color(0.518,0.519,0.455,0.2)","cop","#(argb,8,8,3)color(0.518,0.519,0.455,0.2)","#(argb,8,8,3)color(0.518,0.519,0.455,0.2)"],
			[_path + "heli_transport_02_1_ion_co.paa","cop",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["textures\cop\cop_hatchback.jpg","cop"],
			["textures\cars\asiimov_hatchback_textures.jpg","civ"],
			["textures\cars\nature_hatchback.jpg","civ"],
			["textures\cars\UK_police_hatchback_co.jpg","cop"],
			["textures\ems\EMS_hatchback.jpg","med"],
			["textures\custom\TRG_sporthatch_KBLOCK_0.jpg","civ"],
			["textures\custom\TRG_sporthatch_REDGULL_0.jpg","civ"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"],
			["textures\cop\police_offroad.jpg","cop"],
			["textures\cop\swat_offroad.jpg","cop"],
			["textures\cop\police_uk_offroad.jpg","cop"],
			["textures\custom\TRG_hobo_policeOffroad1.jpg","cop"],
			["textures\custom\TRG_AMC_offroad1.jpg","civ"],
			["textures\custom\TRG_offroad_oldBLU_RACER_0.jpg","civ"],
			["textures\custom\TRG_offroad_oldGRN_0.jpg","civ"],
			["textures\custom\TRG_offroad_oldORNG_0.jpg","civ"],
			["textures\custom\TRG_offroad_oldRED_0.jpg","civ"]
			
			
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"],
			["textures\cars\asiimov_hatchback_textures.jpg","civ"],
			["textures\cars\nature_hatchback.jpg","civ"],
			["textures\cop\cop_hatchback.jpg","cop"],
			["textures\cars\UK_police_hatchback_co.jpg","cop"],
			["textures\ems\EMS_hatchback.jpg","med"],
			["textures\custom\TRG_reghatch_oldGREY_0.jpg","civ"],
			["textures\custom\TRG_reghatch_oldGRN_0.jpg","civ"],
			["textures\custom\TRG_reghatch_oldPURPL_0.jpg","civ"]
			
			
			
			
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\cars\cube_suv.jpg","civ"],
			["textures\cars\poly_suv.jpg","civ"],
			["textures\cop\police_suv.jpg","cop"],
			["textures\cop\police_uk_suv.jpg","cop"],
			["textures\ems\EMS_SUV.jpg","med"],
			["textures\ems\EMS_SUV_1.jpg","med"],
			["textures\cars\sticker.jpg","civ"],
			["textures\custom\TRG_SUV_ambulance1.jpg","med"],
			["textures\custom\TRG_suv_bluflames_0.jpg","civ"],
			["textures\custom\TRG_suv_ferarri_0.jpg","civ"],
			["textures\custom\TRG_suv_oldBLU_0.jpg","civ"],
			["textures\custom\TRG_suv_oldGREY_0.jpg","civ"],
			["textures\custom\TRG_suv_oldORNG_0.jpg","civ"],
			["textures\custom\TRG_SUV_oldRED_0.jpg","civ"],
			["textures\custom\TRG_leopardPIMP1.jpg"],
			["textures\custom\nyancatsuv.jpg","civ"],
			["textures\custom\adminsuv.jpg","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"],
			["textures\custom\TRG_atv_brwn_0.jpg","civ"],
			["textures\custom\TRG_atv_customBLU_0.jpg","civ"],
			["textures\custom\TRG_atv_grn_0.jpg","civ"],
			["textures\custom\TRG_atv_red_0.jpg","civ"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\cop\police_heli.jpg","cop","textures\cop\police_heli2.jpg"],
			["textures\cop\police_heli3.jpg","cop","textures\cop\police_heli3.jpg"],
			["textures\custom\TRG_hobo_police_lilbird.jpg","cop","textures\custom\TRG_hobo_police_lilbird.jpg"],
			["textures\custom\TRG_hobo_police_lilbird2.jpg","cop","textures\custom\TRG_hobo_police_lilbird2.jpg"],
			["textures\ems\humming_ems.jpg","med","textures\ems\humming_ems.jpg"],
			["textures\ems\EMS_LTB.jpg","med","textures\ems\EMS_LTB.jpg"]
			
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\ems\EMS_Heli.jpg","med"]
		];
	};
	case "B_Heli_Transport_01_F":
	{
		_ret = 
		[
			["textures\custom\TRG_ghosthawk_police_0.jpg","cop"],
			["textures\custom\TRG_ghosthawk_police_1.jpg","cop"]
			
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\cop\cop_hunter.jpg","cop","textures\cop\swat_hunter_2.jpg"],
			["textures\cop\swat_hunter.jpg","cop","textures\cop\swat_hunter_2.jpg"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\rebel\blackmatte.jpg","reb","textures\rebel\blackmatte.jpg"],
			["textures\rebel\reblbirdcamo1.jpg","reb","textures\rebel\reblbirdcamo1.jpg"],
			["textures\custom\TRG_ifrit_pirate_0.jpg","reb","textures\custom\TRG_ifrit_pirate_0.jpg"],
			["textures\custom\TRG_ifrit_pirate_1.jpg","reb","textures\custom\TRG_ifrit_pirate_1.jpg"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["\A3\soft_f_beta\mrap_03\data\mrap_03_ext_co.paa","cop","\A3\data_f\vehicles\turret_co.paa"],
			["\A3\soft_f_beta\mrap_03\data\mrap_03_ext_indp_co.paa","reb","\A3\data_f\vehicles\turret_co.paa"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"],
			["textures\custom\TRG_zamak_ambulance_0.jpg","med"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
};

_ret;