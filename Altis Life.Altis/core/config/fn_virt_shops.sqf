/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "gits_market": {["LHMC Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","storagesmall","storagebig"]]};
	case "market": {["Altis Market",["water","cornmeal","debitcard","bottles","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","storagesmall","storagebig"]]};
	case "redburger": {["Red Burger Stand",["water","rabbit","apple","redgull","tbacon"]]};
	case "rebel": {["Rebel Market",["water","rabbit","bottles","apple","redgull","tbacon","lockpick","ipuranium","pickaxe","fuelF","peach","boltcutter","blastingcharge","handcuffs","handcuffkeys"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","handcuffs","handcuffkeys"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","methp"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "bar": {["The Lounge",["bottledbeer","bottledwhiskey"]]};
	case "speakeasy": {["Speakeasy's",["bottledwhiskey","bottledshine","bottledbeer","moonshine"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "uranium": {["Uranium Merchant",["uranium","puranium"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelF","defusekit","handcuffs","handcuffkeys"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
};