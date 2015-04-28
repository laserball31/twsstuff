private ["_loadoutName","_action","_guncost"];
if(playerSide in [west,independent]) exitWith {hint"You are not allowed to buy that uniform";};
if (vehicle player != player) exitWith { hint "Get out of your vehicle!" };
/*File:fn_underWaterLoadout.sqf Author:[midgetgrimm] */
if(!alive player) exitWith {hint"You dead homie.. dafuq";};
_guncost = 75000;
if(life_cash < _guncost) exitWith {hint format[localize "STR_NOTF_LO_NoCash",_guncost];};
_loadoutName = "Underwater Loadout";
_action = [
			format["Are you sure you wish to clear your current loadout for the :%1: It will cost you $%2 cash",_loadoutName,[_guncost] call life_fnc_numberText],
			"Purchase Loadout",
			"Purchase",
			"No"
		] call BIS_fnc_guiMessage;
if(_action) then {
			
hint parseText format["You bought the %1 for <t color='#8cff9b'>$%2</t>",_loadoutName,[_guncost] call life_fnc_numberText];
life_cash = life_cash - 75000;
			
titleText ["That'll be $75,000. Now, please undress...","PLAIN"];

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

player addUniform "U_O_Wetsuit";
player addGoggles "G_Diving";
player addVest "V_RebreatherIR";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addMagazine "20Rnd_556x45_UW_mag";
player addWeapon "arifle_SDAR_F";
player selectWeapon "arifle_SDAR_F";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "NVGoggles";
player assignItem "NVGoggles";
titleText ["...don't forget your bag...","PLAIN"];
player addBackPack "B_FieldPack_blk";
mybackpack = unitBackpack player;
mybackpack addItemCargoGlobal ["Toolkit", 1];
reload player;
titleText [format["Enjoy your %1",_loadoutName],"PLAIN"];
} else {
			hint"Okay, thanks for nothing..";
};