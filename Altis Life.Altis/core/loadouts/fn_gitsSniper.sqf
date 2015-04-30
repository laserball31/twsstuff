#include <macro.h>
/*File:fn_underWaterLoadout.sqf Author:[midgetgrimm] */
private ["_loadoutName","_action","_guncost"];
if(playerSide in [civilian,independent]) exitWith {hint "You are not a cop!";};
if(__GETC__(life_coplevel) < 6) exitWith {hint"You are not LHMC!";};
if (vehicle player != player) exitWith {hint "Get out of your vehicle!";};
if(!alive player) exitWith {hint"You dead homie.. dafuq";};
_guncost = 250000;
if(life_cash < _guncost) exitWith {hint format[localize "STR_NOTF_LO_NoCash",_guncost];};
_loadoutName = "LHMC Loadout";
_action = [
			format["Are you sure you wish to clear your current loadout for the :%1: It will cost you $%2 cash",_loadoutName,[_guncost] call life_fnc_numberText],
			"Purchase Loadout",
			"Purchase",
			"No"
		] call BIS_fnc_guiMessage;
if(_action) then {
			
hint parseText format["You bought the %1 for <t color='#8cff9b'>$%2</t>",_loadoutName,[_guncost] call life_fnc_numberText];
life_cash = life_cash - _guncost;
			
titleText ["That'll be $250,000.","PLAIN"];

sleep 1;
RemoveAllWeapons player;
{player removeMagazine _x;} foreach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;
{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);
titleText[format["Now put on your %1 ...",_loadoutName],"PLAIN"];
sleep 3;

player addUniform "U_B_CTRG_1";
player addHeadGear "H_HelmetB_light";
player addGoggles "G_Combat";
player addVest "V_PlateCarrierH_CTRG";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addMagazine "5Rnd_127x108_APDS_Mag";
player addWeapon "hgun_P07_snds_F";
player addWeapon "srifle_GM6_F";
player selectWeapon "srifle_GM6_F";
player addPrimaryWeaponItem "optic_tws";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "NVGoggles";
player assignItem "NVGoggles";
titleText ["...don't forget your bag...","PLAIN"];
player addBackPack "B_Carryall_mcamo";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["Toolkit", 1];
mybackpack addItemCargoGlobal ["Medikit", 1];
mybackpack addItemCargoGlobal ["FirstAidKit", 2];
life_inv_coffee = life_inv_coffee + 5;
life_inv_donuts = life_inv_donuts + 5;
reload player;
titleText [format["Enjoy your %1",_loadoutName],"PLAIN"];
} else {
			hint"Okay, thanks for nothing..";
};