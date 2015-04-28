/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{

	case "S_Rangerover_Black": {525};
	case "S_Rangerover_Red": {525};
	case "S_Rangerover_Blue": {525};
	case "S_Rangerover_Green": {525};
	case "S_Rangerover_Purple": {525};
	case "S_Rangerover_Grey": {525};
	case "S_Rangerover_Orange": {525};
	case "S_Rangerover_White": {525};
	
	case "IVORY_PRIUS": {525};

	case "S_Vantage_Red": {525};
	case "S_Vantage_Blue": {525};
	case "S_Vantage_Yellow": {525};
	case "S_Vantage_Black": {525};
	case "S_Vantage_LightBlue": {525};
	case "S_Vantage_Purple": {525};
	case "S_Vantage_White": {525};	

	case "A3L_ChargerUC": {525};
	case "A3L_ChargerUCWhite": {525};
	case "Glider": {525};
	case "tu154": {525};
	case "yak42": {525};
	case "A3L_Hyster60": {525};
	case "A3L_Hoverboard": {525};
	case "A3L_Hoverboard_bull": {525};
	case "Skateboard_boobs": {525};
	case "Skateboard_colorful": {525};
	case "Skateboard": {525};
	case "Skateboard_skull": {525};
	case "Jonzie_Forklift": {525};
	case "A3L_Horse": {525};
	case "A3L_RX7_Black": {525};
	case "A3L_RX7_Blue": {525};
	case "A3L_RX7_Red": {525};
	case "A3L_RX7_White": {525};
	case "A3L_BMW135Black": {525};
	case "A3L_BMW135Blue": {525};
	case "A3L_BMW135Purple": {525};
	case "A3L_BMW135Red": {525};
	case "A3L_BMW135White": {525};
	case "BMW_M5Black": {525};
	case "BMW_M5Blue": {525};
	case "BMW_M5Red": {525};
	case "BMW_M5White": {525};
	case "A3L_Atom": {525};
	case "A3L_Flipcar": {525};
	case "A3L_MonsterTruck": {925};
	case "A3L_SchoolBus": {525};

	case "A3L_CVWhite": {525};
	case "A3L_CVBlack": {525};
	case "A3L_CVGrey": {525};
	case "A3L_CVRed": {525};
	case "A3L_CVPink": {525};
	case "A3L_CVBlue": {525};
	
	case "A3L_CVPILBFD": {525};
	
	case "A3L_CVPIUC": {525};
	case "A3L_CVPIUCBlack": {525};
	case "A3L_CVPIUCWhite": {525};
	case "A3L_CVPIUCGrey": {525};
	case "A3L_CVPIUCRed": {525};
	case "A3L_CVPIUCPink": {525};
	case "A3L_CVPIUCBlue": {525};
	
	case "Jonzie_Mini_Cooper": {525};

	case "S_McLarenP1_Black": {525};
	case "S_McLarenP1_Blue": {525};
	case "S_McLarenP1_Orange": {525};
	case "S_McLarenP1_White": {525};
	case "S_McLarenP1_Yellow": {525};
	case "S_McLarenP1_Silver": {525};
	
	case "S_PorscheRS_Black": {525};
	case "S_PorscheRS_Yellow": {525};
	case "S_PorscheRS_White": {525};
	
	case "IVORY_REV": {525};
	case "IVORY_R8SPYDER": {525};
	case "IVORY_R8": {525};

	case "A3L_GrandCaravanUC": {525};
	case "A3L_GrandCaravanUCBlack": {525};
	
	case "A3L_Bus": {530};
	
	case "A3L_TaurusFPBLBPD": {525};
	case "A3L_TaurusFPBLBCSO": {525};
	case "A3L_TaurusFPBPD": {525};
	case "A3L_TaurusFPBPDGM": {525};
	case "A3L_TaurusFPBCSO": {525};
	case "A3L_TaurusUCBlack": {525};
	case "A3L_TaurusUCGrey": {525};
	case "A3L_TaurusUCWhite": {525};
	case "A3L_TaurusUCBlue": {525};
	
	case "A3L_CVPIFPBPD": {525};
	case "A3L_CVPIFPBCSO": {525};
	case "A3L_CVPIFPBFG": {525};
	case "A3L_CVPIFPBLBPD": {525};
	case "A3L_CVPIFPBLBFG": {525};

	case "A3L_TahoeUCPB": {25};
	case "A3L_TahoeUC": {25};
	case "A3L_TahoeUCGMPB": {25};
	case "A3L_TahoeCSOLBPB": {25};
	
	case "A3L_jailBus": {525};
	
	case "A3L_Suburban": {925};
	case "A3L_SuburbanCSO": {925};
	case "A3L_SuburbanFG": {925};
	case "A3L_ChargerLB": {425};
	
	case "A3L_AmberLamps": {525};
	case "A3L_Laddertruck": {525};
	
	case "A3L_Karts": {555};	
	case "A3L_Towtruck": {930};
	case "M1030": {525};

	case "A3L_Escort": {525};
	case "A3L_EscortTaxi": {525};
	case "A3L_EscortBlue": {525};
	case "A3L_EscortWhite": {525};
	case "A3L_EscortPink": {555};
	
	case "A3L_PuntoRed": {535};
	case "A3L_PuntoBlack": {535};
	case "A3L_PuntoWhite": {535};
	case "A3L_PuntoGrey": {535};
	
	case "A3L_FordKaBlue": {535};
	case "A3L_FordKaRed": {535};
	case "A3L_FordKaBlack": {535};
	case "A3L_FordKaWhite": {535};
	case "A3L_FordKaGrey": {535};
	
	case "A3L_RegalBlack": {535};
	case "A3L_RegalBlue": {535};
	case "A3L_RegalOrange": {535};
	case "A3L_RegalRed": {535};
	case "A3L_RegalWhite": {535};
	
	case "A3L_JeepWhiteBlack": {735};
	case "A3L_JeepGreenBlack": {735};
	case "A3L_JeepRedTan": {735};
	case "A3L_JeepRedBlack": {735};
	case "A3L_JeepGrayBlack": {735};
	
	case "A3L_SuburbanWhite": {645};
	case "A3L_SuburbanBlue": {645};
	case "A3L_SuburbanRed": {645};
	case "A3L_SuburbanBlack": {645};
	case "A3L_SuburbanGrey": {645};
	case "A3L_SuburbanOrange": {645};
	
	case "A3L_TahoeWhite": {545};
	case "A3L_TahoeRed": {545};
	case "A3L_TahoeBlue": {545};
	
	case "A3L_Camaro": {555};
	
	case "A3L_Taurus": {560};
	case "A3L_TaurusBlack": {560};
	case "A3L_TaurusBlue": {560};
	case "A3L_TaurusRed": {560};
	case "A3L_TaurusBlue": {560};
	
	case "A3L_Challenger": {560};
	case "A3L_ChallengerGreen": {560};
	case "A3L_ChallengerRed": {560};
	case "A3L_ChallengerWhite": {560};
	case "A3L_ChallengerBlack": {560};
	case "A3L_ChallengerBlue": {560};
	
	case "A3L_ChargerBlack": {560};
	case "A3L_ChargerWhit": {560};
	case "A3L_ChargerCstm": {560};
	
	case "A3L_VolksWagenGolfGTired": {535};
	case "A3L_VolksWagenGolfGTiblack": {535};
	case "A3L_VolksWagenGolfGTiblue": {535};
    case "A3L_VolksWagenGolfGTiwhite": {535};
	
	case "A3L_AMC": {535};
	case "A3L_AMXRed": {535};
	case "A3L_AMXWhite": {535};
	case "A3L_AMXBlue": {535};
	case "A3L_AMXGL": {535};
	
	case "A3L_VolvoS60RBlack": {535};
	case "A3L_VolvoS60Rred": {535};
	
	case "S_Skyline_Red": {535};
	case "S_Skyline_Blue": {535};
	case "S_Skyline_Black": {535};
	case "S_Skyline_Yellow": {535};
	case "S_Skyline_Purple": {535};
	case "S_Skyline_White": {535};
	
	
	case "A3L_Cooper_concept_blue": {525};
	case "A3L_Cooper_concept_black": {525};
	case "A3L_Cooper_concept_red": {525};
	case "A3L_Cooper_concept_white": {525};
	
	case "A3L_Ferrari458black": {525};
	case "A3L_Ferrari458white": {525};
	case "A3L_Ferrari458blue": {525};
	
	case "A3L_GrandCaravan": {525};
	case "A3L_GrandCaravanBlk": {525};
	case "A3L_GrandCaravanBlue": {525};
	case "A3L_GrandCaravanGreen": {525};
	case "A3L_GrandCaravanRed": {525};
	case "A3L_GrandCaravanPurple": {525};
	
	
	case "Jonzie_Viper": {560};
	case "A3L_F350Black": {1085};
	case "A3L_F350Blue": {1085};
	case "A3L_F350Red": {1085};
	case "A3L_F350White": {1085};
	case "A3L_Dumptruck": {2085};

	// default
	case "B_G_Offroad_01_F": {565};
	case "B_Quadbike_01_F": {525};
	case "C_Hatchback_01_sport_F": {545};
	case "C_Van_01_transport_F": {2600};
	case "I_G_Van_01_transport_F": {2100};
	case "C_Van_01_box_F": {150};
	case "C_Boat_Civil_01_F": {865};
	case "C_Boat_Civil_01_police_F": {856};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_MRAP_01_F": {665};
	case "O_MRAP_02_F": {660};
	case "I_MRAP_03_F": {568};
	case "B_Heli_Light_01_F": {160};
	case "O_Heli_Light_02_unarmed_F": {210};
	case "I_Heli_Transport_02_F": {375};
	case "C_Rubberboat": {465};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {465};
	case "B_Boat_Transport_01_F": {465};
	case "Land_CargoBox_V1_F": {5000};
	case "Box_IND_Grenades_F": {650};
	case "B_supplyCrate_F": {700};
	default {-1};
};