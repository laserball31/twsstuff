#include <macro.h>
#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_drink = 0;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 0.75; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_siren2_active = false;
life_fatigue = 0.5; //Set the max fatigue limit (50%)
life_siren3_active = false;
life_action_gathering = false;
life_sex_ill = 0;
life_checked = 0;

// Safezones
life_safezone_penalty = 0;
life_safezone_penalty_time = time;

//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.

switch (playerSide) do 
{
	case west: {__CONST__(life_revive_fee,2500)};  //Fee for players to pay when revived.
	case independent: {__CONST__(life_revive_fee,7500)};  //Fee for players to pay when revived.
};


//House Limit
__CONST__(life_houseLimit,4); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,0); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,3.5); //BLAH

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 55; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 55; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_isSuicide = false;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
__CONST__(life_paycheck_period,5); //Four minutes
life_cash = 0;
__CONST__(life_impound_car,8500);
__CONST__(life_impound_boat,6500);
__CONST__(life_impound_air,13500);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 800; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 800; //Paycheck Amount
	};
	case independent: {
		life_atmcash = 50000; //Starting Bank Money
		life_paycheck = 1250; //Paycheck Amount
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MBT_01_cannon_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_debitcard",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_puranium",
	"life_inv_cornmeal",
	"life_inv_beerp",
	"life_inv_whiskey",
	"life_inv_rye",
	"life_inv_hops",
	"life_inv_yeast",
	"life_inv_bottles",
	"life_inv_bottledshine",
	"life_inv_bottledbeer",
	"life_inv_bottledwhiskey",
	"life_inv_moonshine",
	"life_inv_mash",
	"life_inv_ipuranium",
	"life_inv_uranium1",
	"life_inv_uranium2",
	"life_inv_uranium3",
	"life_inv_uranium4",
	"life_inv_uranium",
	"life_inv_handcuffs",
    "life_inv_handcuffkeys",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_storagesmall",
	"life_inv_storagebig"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_driver","civ"],
	["license_civ_stiller","civ"],
	["license_civ_liquor","civ"],
	["license_civ_bottler","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_uranium","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
    ["license_civ_bountyh", "civ"], // <-- Add the License here!
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_med_air","med"],
	["license_civ_meth","civ"],
	["license_civ_opfor","civ"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",2500],["heroinp",4000],["handcuffs",200],["handcuffkeys",100],["cocaine",1500],["ipuranium",10000],["cocainep",3500],["marijuana",2000],["turtle",35000],["blastingcharge",10000],["methu",4000],["methp",6000],["boltcutter",500],["goldbar",125000],["moonshine",9000],["bottledshine",11000],["mash",5000]
,["spikeStrip",1700],["lockpick",75]];


// Safezone config
life_safezone_status = true;
life_safezone_config = [
["safezone_1","Rebel North",civilian,400,true],
["safezone_2","Rebel East",civilian,400,true],
["safezone_3","Rebel South",civilian,400,true],
["safezone_4","Rebel West",civilian,400,true]
];

/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",150],
	["heroinu",3500],
	["debitcard",0],
	["bottledshine",15000], 
	["bottledwhiskey",11000], 
	["bottledbeer",10000], 
	["moonshine",7000], 
	["whiskey",5000], 
	["beerp",4500], 
	["mash",2500], 
	["rye",2000], 
	["hops",1800], 
	["yeast",2000], 
	["cornmeal",200], 
	["bottles",75], 
	["heroinp",8000],
	["salema",125],
	["ornate",175],
	["mackerel",225],
	["tuna",1000],
	["mullet",350],
	["catshark",450],
	["rabbit",165],
	["oilp",4500],
	["turtle",35000],
	["handcuffs",200],
    ["handcuffkeys",100],
	["water",5],
	["coffee",5],
	["turtlesoup",1500],
	["donuts",60],
	["marijuana",3500],
	["tbacon",25],
	["lockpick",75],
	["pickaxe",750],
	["redgull",200],
	["peach",155],
	["cocaine",4000],
	["cocainep",7500],
	["diamond",500],
	["diamondc",8500],
	["iron_r",3000],
	["copper_r",2000],
	["salt_r",2000],
	["glass",1750],
	["fuelF",750],
	["spikeStrip",1700],
	["cement",2500],
	["goldbar",125000],
	["methu",6000],
	["methp",9000],
	["uranium",45000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["apple",200],
	["rabbit",200],
	["salema",200],
	["ornate",225],
	["debitcard",15000],
	["bottledshine",12500], 
	["bottledwhiskey",8000], 
	["bottledbeer",8000], 
	["moonshine",7500], 
	["whiskey",5500], 
	["beerp",5000], 
	["cornmeal",500], 
	["mash",2500], 
	["bottles",100],
	["mackerel",300],
	["tuna",1250],
	["mullet",500],
	["catshark",700],
    ["handcuffs",500],
    ["handcuffkeys",300],
	["water",10],
	["turtle",40000],
	["turtlesoup",3000],
	["donuts",120],
	["coffee",10],
	["tbacon",75],
	["lockpick",1000],
	["pickaxe",1500],
	["redgull",1000],
	["fuelF",850],
	["peach",200],
	["spikeStrip",3500],
	["blastingcharge",50000],
	["boltcutter",15000],
	["defusekit",15000],
	["storagesmall",60000],
	["storagebig",100000],
	["puranium",15000],
	["ipuranium",9000]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",7500],
	["hgun_P07_snds_F",650],
	["hgun_P07_F",1500],
	["ItemGPS",45],
	["ToolKit",75],
	["FirstAidKit",65],
	["Medikit",450],
	["NVGoggles",980],
	["16Rnd_9x21_Mag",15],
	["20Rnd_556x45_UW_mag",35],
	["ItemMap",35],
	["ItemCompass",25],
	["Chemlight_blue",50],
	["Chemlight_yellow",50],
	["Chemlight_green",50],
	["Chemlight_red",50],
	["hgun_Rook40_F",500],
	["arifle_Katiba_F",5000],
	["30Rnd_556x45_Stanag",65],
	["20Rnd_762x51_Mag",85],
	["30Rnd_65x39_caseless_green",50],
	["DemoCharge_Remote_Mag",7500],
	["SLAMDirectionalMine_Wire_Mag",2575],
	["optic_ACO_grn",250],
	["acc_flashlight",100],
	["srifle_EBR_F",15000],
	["arifle_TRG21_F",3500],
	["optic_MRCO",5000],
	["optic_Aco",850],
	["arifle_MX_F",7500],
	["arifle_MXC_F",5000],
	["arifle_MXM_F",8500],
	["MineDetector",500],
	["optic_Holosight",275],
	["acc_pointer_IR",175],
	["arifle_TRG20_F",2500],
	["SMG_01_F",1500],
	["arifle_Mk20C_F",4500],
	["30Rnd_45ACP_Mag_SMG_01",60],
	["30Rnd_9x21_Mag",30]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["C_Boat_Civil_01_police_F",1000],
	["B_SDV_01_F",1000],
	["B_Quadbike_01_F",1000],
	["C_Hatchback_01_sport_F",1000],
	["C_Offroad_01_F",1000],
	["C_Hatchback_01_F",1000],
	["B_G_Van_01_transport_F",1000],
	["O_Truck_03_fuel_F",1000],
	["O_Truck_03_repair_F",1000],
	["C_Rubberboat",1000],
	["C_Boat_Civil_01_F",1000],
	["B_Heli_Light_01_F",1000],
	["O_Heli_Light_02_unarmed_F",1000],
	["O_MRAP_02_F",1000],
	["O_G_Offroad_01_armed_F",1000],
	["O_Truck_03_transport_F",1000],
	["O_Truck_03_covered_F",1000],
	["I_MRAP_03_F",1000],
	["I_Heli_light_03_unarmed_F",1000],
	["I_Heli_Transport_02_F",1000],
	["C_Quadbike_01_F",1000],
	["C_SUV_01_F",1000],
	["I_Truck_02_medical_F",1000],
	["O_Truck_03_medical_F",1000],
	["B_Truck_01_medical_F",1000],
	["B_Plane_CAS_01_F",25000],
	["O_Plane_CAS_02_F",25000],
	["B_Heli_Light_01_F",1000],
	["I_Heli_light_03_unarmed_F",1000],
	["B_MRAP_01_F",1000],
	["B_MRAP_01_hmg_F",1000],
	["B_MRAP_01_gmg_F",1000],
	["B_Heli_Transport_01_F",1000],
	["B_Heli_Attack_01_F",1000],
	["O_Heli_Attack_02_F",1000],
	["B_Truck_01_transport_F",1000],
	["O_Truck_03_device_F",1000],
	["B_APC_Wheeled_01_cannon_F",10000]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["C_Boat_Civil_01_police_F",2000],	
	["B_SDV_01_F",1000],	
	["B_Quadbike_01_F",250],	
	["C_Hatchback_01_sport_F",950],	
	["C_Offroad_01_F",1250],	
	["C_Hatchback_01_F",3500],	
	["B_G_Van_01_transport_F",6000],	
	["O_Truck_03_fuel_F",7500],	
	["O_Truck_03_repair_F",75000],	
	["C_Rubberboat",500],	
	["C_Boat_Civil_01_F",2200],	
	["B_Heli_Light_01_F",30000],	
	["O_Heli_Light_02_unarmed_F",4500],	
	["O_MRAP_02_F",25000],	
	["O_G_Offroad_01_armed_F",5000],	
	["O_Truck_03_transport_F",3500],
	["B_Plane_CAS_01_F",21000],
	["O_Plane_CAS_02_F",21000],	
	["O_Truck_03_covered_F",3500],	
	["I_MRAP_03_F",3000],	
	["I_Heli_light_03_unarmed_F",5000],	
	["I_Heli_Transport_02_F",5000],	
	["C_Quadbike_01_F",100],	
	["C_SUV_01_F",1000],	
	["I_Truck_02_medical_F",2500],	
	["O_Truck_03_medical_F",4500],	
	["B_Truck_01_medical_F",6000],	
	["B_Heli_Light_01_F",20000],	
	["I_Heli_light_03_unarmed_F",3000],	
	["B_MRAP_01_F",4500],	
	["B_MRAP_01_hmg_F",3500],	
	["B_MRAP_01_gmg_F",5000],	
	["B_Heli_Transport_01_F",4500],	
	["B_Heli_Attack_01_F",7500],
	["O_Heli_Attack_02_F",5000],
	["B_Truck_01_transport_F",3500],
	["O_Truck_03_device_F",5000],
	["B_APC_Wheeled_01_cannon_F",5000]
];
__CONST__(life_garage_sell,life_garage_sell);