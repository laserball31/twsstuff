#include <macro.h>
/*File:fn_underWaterLoadout.sqf Author:[midgetgrimm] */
private ["_loadoutName","_action","_guncost"];
if(playerSide in [civilian,independent]) exitWith {hint "You are not a cop!";};
if(__GETC__(life_coplevel) < 4) exitWith {hint"You are not Super Intendent";};
if (vehicle player != player) exitWith {hint "Get out of your vehicle!";};
if(!alive player) exitWith {hint"You dead homie.. dafuq";};
_guncost = 160000;
if(life_cash < _guncost) exitWith {hint format[localize "STR_NOTF_LO_NoCash",_guncost];};
_loadoutName = "Super Intendent Loadout";
_action = [
			format["Are you sure you wish to clear your current loadout for the :%1: It will cost you $%2 cash",_loadoutName,[_guncost] call life_fnc_numberText],
			"Purchase Loadout",
			"Purchase",
			"No"
		] call BIS_fnc_guiMessage;
if(_action) then {
			
hint parseText format["You bought the %1 for <t color='#8cff9b'>$%2</t>",_loadoutName,[_guncost] call life_fnc_numberText];
life_cash = life_cash - _guncost;
			
titleText ["That'll be $160,000. Now, please undress...","PLAIN"];

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

player addUniform "U_B_CTRG_3";
player addHeadGear "H_Beret_blk_POLICE";
player addGoggles "G_Aviator";
player addVest "V_PlateCarrier1_blk";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "16Rnd_9x21_Mag";
player addMagazine "200Rnd_65x39_cased_Box";
player addMagazine "200Rnd_65x39_cased_Box";
player addMagazine "200Rnd_65x39_cased_Box";
player addMagazine "200Rnd_65x39_cased_Box";
player addMagazine "200Rnd_65x39_cased_Box";
player addMagazine "200Rnd_65x39_cased_Box";
player addWeapon "hgun_P07_snds_F";
player addWeapon "LMG_Mk200_F";
player selectWeapon "LMG_Mk200_F";
player addPrimaryWeaponItem "optic_Arco";
player addPrimaryWeaponItem "muzzle_snds_H_MG";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "NVGoggles";
player assignItem "NVGoggles";
titleText ["...don't forget your bag...","PLAIN"];
player addBackPack "B_Bergen_blk";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["Toolkit", 1];
mybackpack addItemCargoGlobal ["Medikit", 1];
mybackpack addItemCargoGlobal ["FirstAidKit", 2];
mybackpack addItemCargoGlobal ["HandGrenade_Stone", 4];
life_inv_redgull = life_inv_redgull + 5;
life_inv_rabbit = life_inv_rabbit + 5;
life_inv_water = life_inv_water + 5;
reload player;
titleText [format["Enjoy your %1",_loadoutName],"PLAIN"];
} else {
			hint"Okay, thanks for nothing..";
};