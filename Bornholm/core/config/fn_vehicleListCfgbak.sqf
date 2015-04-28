#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	Edited: BottledHate
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];

_masterList = [["A3L_Cooper_concept_blue",45000],
			["A3L_Cooper_concept_black",45000],
			["A3L_Cooper_concept_red",45000],
			["A3L_Cooper_concept_white",45000],

			["A3L_AMC",65000],
			["A3L_AMXRed",65000],
			["A3L_AMXWhite",65000],
			["A3L_AMXBlue",65000],
			["A3L_AMXGL",65000],

			["A3L_VolvoS60RBlack",65000],
			["A3L_VolvoS60Rred",65000],

			["S_Skyline_Red",65000],
			["S_Skyline_Blue",65000],
			["S_Skyline_Black",65000],
			["S_Skyline_Yellow",65000],
			["S_Skyline_Purple",65000],
			["S_Skyline_White",65000],

			["S_Vantage_Red",150000],
			["S_Vantage_Blue",150000],
			["S_Vantage_Black",150000],
			["S_Vantage_Yellow",150000],
			["S_Vantage_LightBlue",150000],
			["S_Vantage_Purple",150000],
			["S_Vantage_White",150000],

			["A3L_Ferrari458black",258000],
			["A3L_Ferrari458white",258000],
			["A3L_Ferrari458blue",258000],

			["S_PorscheRS_Black",300000],
			["S_PorscheRS_Yellow",300000],
			["S_PorscheRS_White",300000],

		

			["cl3_carrera_gt_aqua",500000],
			["cl3_carrera_gt_black",500000],
			["cl3_carrera_gt_blue",500000],
			["cl3_carrera_gt_camo",500000],
			["cl3_carrera_gt_camo_urban",500000],
			["cl3_carrera_gt_gold",500000],
			["cl3_carrera_gt_lavander",500000],
			["cl3_carrera_gt_lime",500000],
			["cl3_carrera_gt_orange",500000],
			["cl3_carrera_gt_red",500000],
			["cl3_carrera_gt_silver",500000],
			["cl3_carrera_gt_white",500000],
			["cl3_carrera_gt_yelow",500000],

			["cl3_dbs_volante_black",200000],
			["cl3_dbs_volante_blue",200000],
			["cl3_dbs_volante_red",200000],
			["cl3_dbs_volante_white",200000],
			["cl3_dbs_volante_silver",200000],
			["cl3_dbs_volante_lime",200000],
			["cl3_dbs_volante_flame",200000],
			["cl3_dbs_volante_flame1",200000], 
			["cl3_dbs_volante_flame2",200000],
			["cl3_dbs_volante_orange",200000],
			["cl3_dbs_volante_babypink",200000],
			["cl3_dbs_volante_yellow",200000],
			["cl3_dbs_volante_lavender",200000],
			["cl3_dbs_volante_green",200000],
			["cl3_dbs_volante_sand",200000],				
			["B_Quadbike_01_F",10000],
			["O_MRAP_02_F",250000],
			["C_SUV_01_F",45000],
			["C_Hatchback_01_sport_F",35000],
			["O_G_Offroad_01_armed_F",1000000],
			["O_Truck_03_transport_F",350000],
			["O_Truck_03_covered_F",350000],
			["B_Truck_01_transport_F",350000],
			["O_Truck_03_device_F",500000],
			["I_MRAP_03_F",300000],
		
			["I_Heli_light_03_unarmed_F",500000],
			["I_Heli_Transport_02_F",500000],
			["O_Heli_Attack_02_F",500000],
			["B_MRAP_01_hmg_F",4000000],
			["B_Heli_Transport_03_unarmed_F",2500000],

			["cl3_e60_m5_blue",130000],
			["cl3_e60_m5_camo",130000],
			["cl3_e60_m5_camo_urban",130000],
			["cl3_e60_m5_gold",130000],
			["cl3_e60_m5_lime",130000],
			["cl3_e60_m5_babyblue",130000],
			["cl3_e60_m5_babypink",130000],
			["cl3_e60_m5_orange",130000],
			["cl3_e60_m5_purple",130000],
			["cl3_e63_amg­_black",170000],
			["cl3_e63_amg­_blue",170000],
			["cl3_e63_amg­_red",170000],
			["cl3_e63_amg­_silver",170000],
			["cl3_e63_amg­_white",170000],
			["cl3_e63_amg­_camo",170000],
			["cl3_e63_amg­_camo_urban",170000],
			["cl3_e63_amg­_lime",170000],
			["cl3_e63_amg­_orange",170000],
			["cl3_e63_amg­_purple",170000],
			["cl3_e63_amg­_babypink",170000],
			
			["cl3_golf_learner_white",3000],
			["cl3_golf_mk2­_black",10000],
			["cl3_golf_mk2­_blue",10000],
			["cl3_golf_mk2­_camo",10000],
			["cl3_golf_mk2­_babypink",10000],
			["cl3_golf_mk2­_babyblue",10000],
			["cl3_golf_mk2­_red",10000],
			["cl3_golf_mk2­_gold",10000],
			["cl3_golf_mk2­_lavander",10000],
			["cl3_golf_mk2­_lime",10000],
			["cl3_golf_mk2­_sand",10000],
			["cl3_golf_mk2­_white",10000],
			
			["cl3_insignia_black",200000],
			["cl3_insignia_blue",200000],
			["cl3_insignia_red",200000],
			["cl3_insignia_silver",200000],
			["cl3_insignia_orange",200000],
			["cl3_insignia_camo",200000],
			["cl3_insignia_lime",200000],
			["cl3_insignia_babyblue",200000],
			["cl3_insignia_babypink",200000],
			["cl3_insignia_sand",200000],
			["cl3_insignia_white",200000],

			["cl3_q7_black",60000],
			["cl3_q7_blue",60000],
			["cl3_q7_red",60000],
			["cl3_q7_silver",60000],
			["cl3_q7_camo",60000],
			["cl3_q7_camo_urban",60000],
			["cl3_q7_clpd",60000],
			["cl3_q7_green",60000],
			["cl3_q7_gold",60000],
			["cl3_q7_lime",60000],
			["cl3_q7_babyblue",60000],
			["cl3_q7_babypink",60000],
			["cl3_taurus_black",90000],

			["IVORY_R8",130000],
			["IVORY_R8SPYDER",135000],

			//["cl3_batmobile",6000000],

			["IVORY_REV",550000],


			["cl3_r8_spyder_flame",300000],
			["cl3_r8_spyder_flame1",300000],
			["cl3_r8_spyder_flame2",300000],
			["cl3_r8_spyder_2tone1",300000],
			["cl3_r8_spyder_2tone2",300000],
			["cl3_r8_spyder_2tone3",300000],
			["cl3_r8_spyder_2tone4",300000],
			["cl3_r8_spyder_2tone5",300000],
			["cl3_r8_spyder_lime",300000],
			["cl3_r8_spyder_aqua",300000],
			
			
			
			["cl3_arielatom_race­_aqua",100000], 
			["cl3_arielatom_race­_black",100000], 
			["cl3_arielatom_race­_blue",100000], 
			["cl3_arielatom_race­_camo",100000], 
			["cl3_arielatom_race­_camo_urban",100000], 
			["cl3_arielatom_race­_gold",100000], 
			["cl3_arielatom_race­_green",100000], 
			["cl3_arielatom_race­_lime",100000], 
			["cl3_arielatom_race­_red",100000], 
			["cl3_arielatom_race­_purple",100000], 
			["cl3_arielatom_race­_silver",100000], 
			["cl3_arielatom_race­_white",100000],
			["IVORY_CRJ200_1",1000000],
			["cl3_q7_clpd_etu",50000],
			["cl3_q7_clpd_cn",50000],
			["cl3_q7_clpd_patrol",50000],
			["IVORY_T6A_1",300000],
			["CL3_bus_cl_jail",45000],
			["A3L_Atom",300000],
			["DAR_SWATPolice",260000],
			["A3L_Flipcar",300000],
			["cl3_dodge_charger_cn",60000],
["cl3_reventon_clpd",160000],			
			["A3L_ChargerUC",60000],
			["dbo_CIV_new_bike",5000],["cl3_volha_grey",2500],["RDS_Octavia_Civ_01",2600],["cl3_lada_white",2750],["cl3_s1203_blue",3000],["A3L_EscortTaxi",3200],["RDS_Golf4_Civ_01",3350],["IVORY_PRIUS",3500],["A3L_RegalRed",5000],["A3L_FordKaRed",5350],["cl3_golf_mk2_red",6400],["A3L_PuntoRed",6000],["exxpensive_2cv_base",7000],["cl3_polo_gti_red",8600],["Jonzie_Mini_Cooper",8600],["exxpensive_volvo_242_base",12500],["SAL_AudiCiv",15500],["A3L_VolvoS60Rred",16500],["exxpensive_m5_e34_base",18500],["A3L_JeepRedBlack",15000],["SAL_77TRANSAMCiv",15000],["SAL_IROCCiv",15000],["cl3_dodge_charger_f_red",15000],["A3L_ChallengerRed",15000],["A3L_GrandCaravanRed",16500],["ebike_epoch",80500],["A3L_Camaro",19500],["Jonzie_Mini_Cooper_R_spec",20000],["cl3_civic_vti_red",27500],["exxpensive_cadillac_sedan_base",28500],["DAR_M3CivGrey",29500],["A3L_F350Black",30000],["C_Van_01_transport_F",78000],["cl3_z4_2008_red",80000],["exxpensive_jaguar_base",80000],["exxpensive_mercedes_sls_base",80000],["HMMWV_M1035",100000],["cl3_e60_m5_red",100000],["exxpensive_ford_raptor_base",95000],["LandRover_TK_CIV_EP1",100000],["cl3_defender_110_cammo",100000],["cl3_range_rover_red",110000],["cl3_arielatom_race_red",200000],["cl3_insignia_red",300000],["cl3_e63_amg_red",300000],["cl3_dbs_volante_red",300000],["IVORY_R8",550000],["cl3_r8_spyder_red",300000],["C_Offroad_01_F",300000],["Jonzie_Viper",375000],["A3L_MonsterTruck",600000],["cl3_murcielago_red",550000],["cl3_458_red",650000],["exxpensive_aventador_base",550000],["cl3_lamborghini_gt1_red",650000],["cl3_reventon_red",600000],["S_McLarenP1_Black",650000],["cl3_veyron_red_red",700000],["A3L_CVPILBFD",2250],["cl3_dodge_charger_emt",3750],["Jonzie_Ambulance",15000],["A3L_LadderTruck",35000],["A3L_TaurusFPBLBPD",8000],["A3L_TaurusFPBLBCSO",8000],["A3L_CVPIFPBPD",12000],["A3L_CVPIFPBCSO",12000],["A3L_CVPIFPBLBPD",12000],["A3L_CVPIFPBLBCSO",12000],["A3L_jailBus",15000],["DAR_ExplorerPolice",12000],["DAR_TahoePolice",12000],["DAR_TahoePoliceSlick",12000],["A3L_ChargerLB",15000],["A3L_EvoXFPBLBPD",15000],["A3L_EvoXFPBLBSO",15000],["IVORY_REV",600000],["B_APC_Wheeled_01_cannon_F",1000000],["C_Van_01_box_F",97500],["I_
			_02_transport_F",115000],["I_Truck_02_covered_F",135000],["O_Truck_03_transport_F",190000],["O_Truck_03_covered_F",210000],["O_Truck_03_device_F",250000],["B_Truck_01_mover_F",275000],["B_Truck_01_transport_F",300000],["B_Truck_01_fuel_F",300000],["B_Truck_01_box_F",470000],["C_Rubberboat",1200],["jetski_epoch",4500],["B_CBS_WaterShadow730_F",4500],["O_SDV_01_F",5000],["B_SDV_01_F",5000],["C_Boat_Civil_01_F",3520],["C_Boat_Civil_01_police_F",3520],["B_Boat_Transport_01_F",4600],["B_Heli_Light_01_armed_F",300000],["B_Boat_Armed_01_minigun_F",200000],["mosquito_epoch",200000],["B_Heli_Light_01_F",250000],["C_Heli_Light_01_civil_F",450000],["ivory_b206",600000],["ivory_b206_news",200000],["IVORY_BELL512",800000],["O_Heli_Light_02_unarmed_F",900000],["O_Heli_Transport_04_bench_F",900000],["O_Heli_Transport_04_medevac_F",650000],["I_Heli_Transport_02_F",700000],["IVORY_UH1Y_UNARMED",1300000],["O_Heli_Transport_04_box_F",1200000],["I_Heli_light_03_unarmed_F",2000000],["B_Heli_Transport_03_unarmed_F",3000000],["kyo_MH47E_HC",3500000],["bwi_a3_t6a_1",300000],["FLAY_HangGlider",350000],["ivory_yak42d_1",4000000],["GNT_C185",200000],["GNT_C185F",300000],["IVORY_ERJ135_1",1500000],["globemaster_c17_dover",6000000],["globemaster_c17_altus",6000000],["globemaster_c17_ZZ172_RAF",6000000],["MV22",4000000],["Land_CargoBox_V1_F",1],["Land_Cargo20_blue_F",1],["Box_IND_Grenades_F",1],["B_supplyCrate_F",1]];
_DClevels = [["sides",civilian,west,independent],["civ",0.8,0.7,0.55,1],["cops",0.8,0.7,0.55,1],["medic!",0.9,0.8,0.65,1],["rebel discount",1]];
_civBucketCars = ["RDS_Octavia_Civ_01","cl3_lada_white","cl3_s1203_blue","RDS_Golf4_Civ_01"];
_civCars = ["exxpensive_cadillac_sedan_base","B_Quadbike_01_F","IVORY_PRIUS","A3L_RegalRed","cl3_taurus_black","A3L_FordKaRed","cl3_golf_mk2_red","A3L_PuntoRed","A3L_AMXRed","cl3_dodge_charger_f_red","A3L_ChallengerRed","SAL_AudiCiv","A3L_Camaro","A3L_GrandCaravanRed","A3L_F350Black","LandRover_TK_CIV_EP1","SAL_77TRANSAMCiv","DAR_M3CivGrey","C_Van_01_transport_F"];
_civExoticCars = ["cl3_lamborghini_gt1_red","Jonzie_Viper","S_Vantage_Black","S_McLarenP1_Black","cl3_r8_spyder_red","S_PorscheRS_Black","cl3_458_red","cl3_murcielago_red","cl3_lamborghini_gt1_red","cl3_veyron_red_red"];
_civTrucks = ["C_Van_01_box_F","I_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_device_F","B_Truck_01_mover_F","B_Truck_01_transport_F","B_Truck_01_fuel_F","B_Truck_01_box_F"];
_civAir = ["B_Heli_Light_01_F","mosquito_epoch","C_Heli_Light_01_civil_F","ivory_b206","IVORY_BELL512","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_bench_F","I_Heli_Transport_02_F","O_Heli_Transport_04_box_F","IVORY_UH1Y_UNARMED"];
_civPlane = ["IVORY_CRJ200_1","IVORY_T6A_1","MV22"];
_civShip = ["C_Rubberboat","B_CBS_WaterShadow730_F","jetski_epoch","O_SDV_01_F","C_Boat_Civil_01_F"];
_rebCarAir = (_civCars + ["B_Quadbike_01_F","cl3_defender_110_cammo","C_Offroad_01_F","cl3_range_rover_red","A3L_MonsterTruck","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_bench_F"]);
_supporterShop = ["Jonzie_Mini_Cooper_R_spec","cl3_e60_m5_red","cl3_range_rover_red","cl3_insignia_red","cl3_e60_m5_red","cl3_dbs_volante_red","SAL_77TRANSAMCiv","SAL_IROCCiv","LandRover_TK_CIV_EP1","cl3_r8_spyder_red","IVORY_R8","cl3_arielatom_race_red","cl3_murcielago_red","cl3_458_red","cl3_lamborghini_gt1_red","cl3_reventon_red","cl3_veyron_red_red","C_Van_01_box_F","O_Truck_03_covered_F","O_Truck_03_device_F","B_Truck_01_box_F","ClassName","B_Heli_Light_01_F","C_Heli_Light_01_civil_F","ivory_b206","IVORY_BELL512","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_bench_F","I_Heli_Transport_02_F","O_Heli_Transport_04_box_F","IVORY_UH1Y_UNARMED","kyo_MH47E_HC"];
_copCar1 = ["A3L_TaurusFPBLBPD","CL3_bus_cl_jail","A3L_CVPIFPBLBPD","A3L_ChargerUC","IVORY_PRIUS","cl3_dodge_charger_cn","cl3_q7_clpd_etu","cl3_q7_clpd_cn","cl3_q7_clpd_patrol","A3L_SuburbanCSO","cl3_reventon_clpd","DAR_SWATPolice"];
_copCar2 = (_copCar1);
_copCar3 = (_copCar1 + _copCar2 + ["A3L_CVPIFPBPD","A3L_ChargerLB","A3L_EvoXFPBLBPD"]);
_copCar4 = (_copCar1 + _copCar2 + _copCar3 + ["DAR_TahoePolice"]);
_copAir1 = [["B_Heli_Light_01_F",100000],["ivory_b206_police",45000]];
_copAir2 = (_copAir1 + [["I_Heli_light_03_unarmed_F",85000]]);
_copShip1 = [["C_Rubberboat",1200]];
_copShip2 = (_copShip1 + [["C_Boat_Civil_01_police_F",3520],["B_SDV_01_F",5000]]);
_copShip2 = (_copShip1 + _copShip2 + [["B_Boat_Armed_01_minigun_F",200000]]);
_medicCar = ["A3L_CVPILBFD","cl3_dodge_charger_emt","Jonzie_Ambulance","A3L_LadderTruck"];
_medicAir = [["B_Heli_Light_01_F",137500],["C_Heli_Light_01_civil_F",247500],["O_Heli_Transport_04_medevac_F",357500]];
_civNews = ["ivory_b206_news"];
_reb_carhq = ["B_Quadbike_01_F","O_MRAP_02_F","C_SUV_01_F","C_Hatchback_01_sport_F","O_G_Offroad_01_armed_F","O_Truck_03_transport_F","O_Truck_03_covered_F","B_Truck_01_transport_F","O_Truck_03_device_F","I_MRAP_03_F","B_Heli_Light_01_F","I_Heli_light_03_unarmed_F","I_Heli_Transport_02_F","O_Heli_Attack_02_F","B_MRAP_01_hmg_F","B_Heli_Transport_03_unarmed_F"];


_civKarts = [["C_Kart_01_Blu_F",3600],["C_Kart_01_Fuel_F",3600],["C_Kart_01_Red_F",3600],["C_Kart_01_Vrana_F",3600]];

///////////////BH///////////////////////////////////////////////------------------------------------------------------
//Build The Shops array.
_buildmyshop = {
	_dovip = [_this,1,false] call BIS_fnc_param;
	_doreb = [_this,2,false] call BIS_fnc_param;
	_shop = _this select 0;
	_shopbuilder = [];
	//make some arrays!
	for [{_k=0},{_k < (count _masterList)},{_k=_k+1}] do{
		if (((_masterList select _k) select 0) in _shop) then{
			_shopbuilder set [count (_shopbuilder), (_masterList select _k)];
		};
	};
	// Go adjust the prices.. toss it down to the _priceAdjuster and wait... 
	_shopbuilder2 = [_shopbuilder,_dovip,_doreb] call _priceAdjuster;
	//here is your fully price adjusted array of vehicles..
	_return = _shopbuilder2;
	_return;
};

// All of your price adjust are belong to this: 
_priceAdjuster = {
	_thelist = _this select 0;
	// how to call...  [_supporterCars,true,false] call _buildmyshop;  select 0 the shop. select 1 supporter discount.  select 2 rebel discount
	_vipDCcheck = _this select 1;
	_rebDCcheck = _this select 2;
	_sideDC = 1; _vipDC = 1; _rebDC = 1;
	_sideDC = (_DClevels select ((_DClevels select 0) find playerSide)select 4);
	//vip discount Check for this shop??
	if (_vipDCcheck) then{
		if (__GETC__(life_donator) > 0) then {
			switch (true) do{
				case (__GETC__(life_donator) == 1): {_vipDC = (_DClevels select ((_DClevels select 0) find playerSide)select 1);};
				case (__GETC__(life_donator) == 2): {_vipDC = (_DClevels select ((_DClevels select 0) find playerSide)select 2);};
				case (__GETC__(life_donator) == 3): {_vipDC = (_DClevels select ((_DClevels select 0) find playerSide)select 3);};
			};
		};
	};
	//rebel shop check
	if (_rebDCcheck) then{
		_rebDC = ((_DClevels select 4) select 1);
	};
	//magic?
	for [{_i=0},{_i < (count _thelist)},{_i=_i+1}] do{
		_discounteder = (((_thelist select _i) select 1) * _sideDC);
		_discounteder = (_discounteder * _rebDC);
		_discounteder = floor(_discounteder * _vipDC);
		(_thelist select _i) set [1,_discounteder];
	};
	//profit?? ..all done, send this back to _buildmyshop, to give to the _shop switch...
	_return = _thelist;
	_return;
};
/////////////BH//////////////////////////////////////////////////////-----------------------------------------------------


//default switches + our mods for shops + the calls to the shop builder
switch (_shop) do {
	case "channel_7": { _return = [_civNews] call _buildmyshop; };	
	case "exotic_shop": { _return = [_civExoticCars] call _buildmyshop; };	
	case "bucket_shop": { _return = [_civBucketCars] call _buildmyshop; };		
	case "S_plane_shop": { _return = [_civPlane,true] call _buildmyshop; };		
	case "plane_shop": { _return = [_civPlane] call _buildmyshop; };	
	case "kart_shop": { _return = _civKarts;};
	case "med_shop": { _return = [_medicCar,true] call _buildmyshop; };
	case "med_air_hs": { _return = _medicAir;};
	case "civ_car": { _return = [_civCars] call _buildmyshop; };
	case "civ_truck": { _return = [_civTrucks] call _buildmyshop; };
	case "reb_car": { _return = [_rebCarAir,false,true] call _buildmyshop; };
	case "reb_air": { _return = [_rebAir,false,true] call _buildmyshop; };
	case "cop_car_1": {
		switch(true) do {
			case (__GETC__(life_coplevel) == 1): { _return = [_copCar1,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) == 2): { _return = [_copCar2,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) == 3): { _return = [_copCar2,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) == 4): { _return = [_copCar3,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) == 5): { _return = [_copCar3,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) == 6): { _return = [_copCar4,true] call _buildmyshop; };
			case (__GETC__(life_coplevel) > 6): { _return = [_copCar4,true] call _buildmyshop; };
			default { _return = [_copCar1,true] call _buildmyshop; };
		};
	};
	case "civ_air": { _return = [_civAir] call _buildmyshop; };
	case "cop_air_1": {
		switch(true) do {
			case (__GETC__(life_coplevel) > 3): { _return = _copAir2};
			case (__GETC__(life_coplevel) < 4): { _return = _copAir1};
			default { _return = ""; };
		};
	};
	case "civ_ship": { _return = [_civShip] call _buildmyshop; };
	case "cop_ship_1": {
		switch(true) do {
			case (__GETC__(life_coplevel) > 5): { _return = _copShip3;};
			case (__GETC__(life_coplevel) > 2): { _return = _copShip2;};
			case (__GETC__(life_coplevel) == 1): { _return = _copShip1;};
			default { _return = ""; };
		};
	};
	case "donator_1": {
		switch(true) do {
			case (__GETC__(life_donator) == 1): { _return = [_supporterShop,true] call _buildmyshop; };
			case (__GETC__(life_donator) == 2): { _return = [_supporterShop,true] call _buildmyshop; };
			case (__GETC__(life_donator) == 3): { _return = [_supporterShop,true] call _buildmyshop; };
		};
	};
};
_return;

