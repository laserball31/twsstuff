/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Bruce's Outback Outfits"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
		["A3L_Priest_Uniform","Priest Uniform",10000],
		["A3L_Suit_Uniform","Suit",17500],
		["A3L_Character_Uniform","Life Uniform",15000],
		
		["A3L_Dude_Outfit","Dude outfit",20000],
		["A3L_Farmer_Outfit","Farmer Outfit",20000],
		["A3L_Worker_Outfit","Worker Outfit",20000],
		
		
		["A3LShirt","ArmA 3 Life Shirt",2500],
		["A3L_Poop2day","I Pooped Today!",2750],
		["A3L_A3LogoPants","A3L Logo Pants",1500],
		["pervt_uni","Pervert Shirt",1750],
		
		["BluePlaid_uni","A3L Plaid (Blue)",3250],
		["OrangePlaid_uni","A3L Plaid (Orange)",3500],
		["PinkPlaid_uni","A3L Plaid (Pink)",3500],
		["RedPlaid_uni","A3L Plaid (Red)",3500],
		["YellowPlaid_uni","A3L Plaid (Yellow)",3500],
		
		["checkered_uni","A3L Polo (Checkered)",3500],
		["GbGyBr_uni","A3L Polo (GB-GY-BR)",3500],
		["GnBlBr_uni","A3L Polo (GN-BL-BR)",3500],
		["GnGyBr_uni","A3L Polo (GN-GN-GY)",3500],
		["GyBlBr_uni","A3L Polo (GY-BL-BR)",3500],
		["kingfish_uni","A3L Polo (Kingfish)",3500],
		["mothertrucker_uni","A3L Polo (Mothertrucker)",3500],
		["OrBlBr_uni","A3L Polo (OR-BL-BR)",3500],
		["OrGnGy_uni","A3L Polo (OR-GN-GY)",3500],
		["OrGyBr_uni","A3L Polo (OR-GY-BR)",3500],
		["PkGnGy_uni","A3L Polo (PK-GN-GY)",3500],
		["PkGyBr_uni","A3L Polo (PK-GY-BR)",3500],
		["RdBlBr_uni","A3L Polo (RD-BL-BR)",3500],
		["RdGnGy_uni","A3L Polo (RD-GN-GY)",3500],
		["RdGyBr_uni","A3L Polo (RD-GY-BR)",3500],
		["sohoku_uni","A3L Polo (Sohoku)",3500],
		["WhBlBr_uni","A3L Polo (WH-BL-BR)",3500],
		
		["WhGyBr_uni","A3L Polo (WH-GY-BR)",3500],
		["YlBlBr_uni","A3L Polo (YL-BL-BR)",3500],
		["YlGnGy_unI","A3L Polo (YL-GN-GY)",3500],
		["YlGyBr_uni","A3L Polo (YL-GY-BR)",3500],
		
		["racer_uni","A3L Racer Uniform",3500],
		["taxi_uni","A3L Taxi Uniform",3500],
		["arma3","ArmA 3 Polo",3500],
		["arma3black","ArmA 3 Polo (Black)",3500],
		
		["ATI","ATI Enthusiast",3500],
		["tacobell","Delgado Shirt",3500],
		["dutch","Dutch Shirt",3500],
		["hanacd","Hannes Academy",3500],
		["nvidia","Nvidia Enthusiast",3500],
		
		["SFG","SF Giant",3500],
		["walkingdead","The Walking Dead",3500]
		
		];
	};
	
	//Hats
	case 1:
	{
		[
			["A3L_Legoman","Lego Helmet",10000],
			["A3L_soa_helmet","Biker Helmet",4000],	
			["A3L_gangster_hat","Gangster Mask",1000],
			["A3L_Mask","Mask",1000],
			["A3L_longhairblack","Long Hair Black",1200],
			["A3L_longhairblond","Long Hair Blond",1200],
			["A3L_longhairbrown","Long Hair Brown",1200],
			["A3L_Crown","Crown",1200],
			["cowboyhat","Cowboyhat",1200],
			["A3L_mexicanhat","Mexican Hat",1200],
			["santahat","Santa hat",1200],
			["A3L_Sombrero","Sombrero",1200],
			["turban","Turban",1200],
			["A3L_russianhat","Russianhat",1200]

		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Shades_Black",nil,250],
			["G_Shades_Blue",nil,200],
			["G_Sport_Blackred",nil,200],
			["G_Sport_Checkered",nil,200],
			["G_Sport_Blackyellow",nil,200],
			["G_Sport_BlackWhite",nil,200],
			["G_Squares",nil,100],
			["G_Aviator",nil,1000],
			["G_Lady_Mirror",nil,150],
			["G_Lady_Dark",nil,150],
			["G_Lady_Blue",nil,150],
			["G_Lowprofile",nil,300],
			["G_Combat",nil,550]
		];
	};
	
	//Vest
	case 3:
	{
		[
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
			["B_Carryall_oli",nil,5000],
			["B_Carryall_khk",nil,5000]
		];
	};
};