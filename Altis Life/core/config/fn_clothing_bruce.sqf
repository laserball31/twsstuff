/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//GITS base spawn
if((getPlayerUID player) in [
	"76561198064300066", //TheRick
	"76561197971109372", //Sidjjj
	"76561198107990566", //Bash
	"76561198079919180", //Chasin
	"76561198092645246", //General
	"76561198086053865", //Shanings
	"76561198000639140", //Javi
	"76561198049721952" //TheTroler
])then {
	//Shop Title Name
	ctrlSetText[3103,"GITS Special Clothing"];

	switch (_filter) do
	{
		//Uniforms
		case 0:
		{
			[
				["U_O_GhillieSuit",nil,10000],
				["U_I_GhillieSuit",nil,10000],
				["U_B_GhillieSuit",nil,10000],
				["U_B_PilotCoveralls",nil,5000],
				["U_O_SpecopsUniform_ocamo",nil,2500],
				["U_O_Wetsuit",nil,5000]
				
			];
		};
		
		//Hats
		case 1:
		{
			[
				["H_HelmetB_camo",nil,500],
				["H_HelmetB_plain_mcamo",nil,500],
				["H_Shemag_olive",nil,350],
				["H_Booniehat_mcamo",nil,120],
				["H_Booniehat_dirty",nil,120],
				["H_Bandanna_camo",nil,100],
				["H_Beret_grn",nil,100]
			];
		};
		
		//Glasses
		case 2:
		{
			[
				["G_Aviator",nil,75],
				["G_Combat",nil,75],
				["G_Diving",nil,250],
				["G_Bandanna_blk",nil,75]
			];
		};
		
		//Vest
		case 3:
		{
			[
				["V_PlateCarrier3_rgr",nil,5000],
				["V_PlateCarrierGL_rgr",nil,6000],
				["V_RebreatherB",nil,4000],
				["V_TacVest_khk",nil,2500],
				["V_TacVestCamo_khk",nil,1500]
			];
		};
		
		//Backpacks
		case 4:
		{
			[
				["B_Carryall_cbr",nil,5000],
				["B_Carryall_khk",nil,5000],
				["B_Carryall_mcamo",nil,5000],
				["B_Carryall_ocamo",nil,5000],
				["B_Carryall_oucamo",nil,5000],
				["B_Carryall_oli",nil,5000]
			];
		};
	};
} else 
{		
	//Shop Title Name
	ctrlSetText[3103,"Bruce's Outback Outfits"];

	switch (_filter) do
	{
		//Uniforms
		case 0:
		{
			[
			["U_C_Poloshirt_blue","Poloshirt Blue",250],
			["U_C_Poloshirt_burgundy","Poloshirt Burgundy",275],
			["U_C_Poloshirt_redwhite","Poloshirt Red/White",150],
			["U_C_Poloshirt_salmon","Poloshirt Salmon",175],
			["U_C_Poloshirt_stripped","Poloshirt stripped",125],
			["U_C_Poloshirt_tricolour","Poloshirt Tricolor",350],
			["U_C_Poor_2","Rag tagged clothes",250],
			["U_IG_Guerilla2_2","Green stripped shirt & Pants",650],
			["U_IG_Guerilla3_1","Brown Jacket & Pants",735],
			["U_IG_Guerilla2_3","The Outback Rangler",1200],
			["U_C_HunterBody_grn","The Hunters Look",1500],
			["U_C_WorkerCoveralls","Mechanic Coveralls",2500],
			["U_OrestesBody","Surfing On Land",1100],
			["U_NikosAgedBody","Casual Wears",5000]
			];
		};
		
		//Hats
		case 1:
		{
			[
				["H_Bandanna_camo","Camo Bandanna",120],
				["H_Bandanna_surfer","Surfer Bandanna",130],
				["H_Bandanna_gry","Grey Bandanna",150],
				["H_Bandanna_cbr",nil,165],
				["H_Bandanna_surfer",nil,135],
				["H_Bandanna_khk","Khaki Bandanna",145],
				["H_Bandanna_sgg","Sage Bandanna",160],
				["H_StrawHat","Straw Fedora",225],
				["H_BandMask_blk","Hat & Bandanna",300],
				["H_Booniehat_tan",nil,425],
				["H_Hat_blue",nil,310],
				["H_Hat_brown",nil,276],
				["H_Hat_checker",nil,340],
				["H_Hat_grey",nil,280],
				["H_Hat_tan",nil,265],
				["H_Cap_blu",nil,150],
				["H_Cap_grn",nil,150],
				["H_Cap_grn_BI",nil,150],
				["H_Cap_oli",nil,150],
				["H_Cap_red",nil,150],
				["H_Cap_tan",nil,150]
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
				["G_Aviator",nil,100],
				["G_Lady_Mirror",nil,150],
				["G_Lady_Dark",nil,150],
				["G_Lady_Blue",nil,150],
				["G_Lowprofile",nil,30],
				["G_Combat",nil,55]
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
				["B_AssaultPack_cbr",nil,1500],
				["B_Kitbag_mcamo",nil,1500],
				["B_TacticalPack_oli",nil,2500],
				["B_FieldPack_ocamo",nil,2000],
				["B_Bergen_sgg",nil,2500],
				["B_Kitbag_cbr",nil,2500],
				["B_Carryall_cbr",nil,3500],
				["B_Carryall_khk",nil,3500],
				["B_Carryall_mcamo",nil,3500],
				["B_Carryall_ocamo",nil,3500],
				["B_Carryall_oucamo",nil,3500],
				["B_Carryall_oli",nil,3500]
				
			];
		};
	};
};