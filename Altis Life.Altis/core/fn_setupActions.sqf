/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		// zipes
		life_actions = life_actions + [player addAction["Tie person",life_fnc_tieingAction,cursorTarget,9999999,false,false,"",' 
		!isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !(cursorTarget getVariable "tied") && speed cursorTarget < 1 ']];
		// unzip
		life_actions = life_actions + [player addAction["Untie",life_fnc_untie,cursorTarget,0,false,false,"",' 
		!isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "Escorting") ']];
		// take them organs
		life_actions = life_actions + [player addAction["Harvest Organs",life_fnc_takeOrgans,"",0,false,false,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable ["missingOrgan",FALSE]) && !(player getVariable "Escorting") && !(player getVariable "hasOrgan") && !(player getVariable "transporting") && animationState cursorTarget == "Incapacitated"']];
		// Suicide Bomb MISSION/core/setupAction.sqf 
        life_actions = life_actions + [player addAction["Suicide Bomb Initiate",life_fnc_suicideBomb,"",0,false,false,"",
        'vest player == "V_HarnessOGL_gry" && alive player && playerSide == civilian && !life_istazed && !life_isSuicide && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Rob while surrendered
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
	case west: 
	{
		// unzip
		life_actions = life_actions + [player addAction["Untie",life_fnc_untie,cursorTarget,0,false,false,"",
		' !isNull cursorTarget && !(player getVariable "tied") && !(player getVariable "restrained") && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && animationState cursorTarget == "AmovPercMstpSnonWnonDnon_Ease" && player distance cursorTarget < 3.5 && (cursorTarget getVariable "tied") && !(cursorTarget getVariable "Escorting") ']];
		//Seize weapons
		life_actions = life_actions + [player addAction["Seize weapons",life_fnc_seizePlayerWeapon,cursorTarget,0,false,false,"",'!isNull cursorTarget && (player distance cursorTarget) < 6 && speed cursorTarget < 2 && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && (cursorTarget getVariable "restrained")']];
		//seize Objects
		life_actions = life_actions + [player addAction["Seize objects",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
		//Pickup Unprocessed Meth
		life_actions = life_actions + [player addAction["Pickup Unprocessed Meth",life_fnc_pickupItem,false,0,false,false,"",'!isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "methu" && (player distance cursorTarget) < 3 && (life_carryWeight + (["methu"] call life_fnc_itemWeight)) <= life_maxWeight']];
		//Pickup Processed Meth
		life_actions = life_actions + [player addAction["Pickup Processed Meth",life_fnc_pickupItem,true,0,false,false,"",'!isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "methp" && (player distance cursorTarget) < 3 && (life_carryWeight + (["methp"] call life_fnc_itemWeight)) <= life_maxWeight']];
	};
};