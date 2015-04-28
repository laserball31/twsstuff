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
	case "market": {["Market",["cigarette","beer","burgers","water","apple","redgull","tbacon","pickaxe","fuelF","storagesmall","storagebig"]]};
	case "farm_market": {["Farm Market",["water","peach","apple","rabbit","salema","mackerel","mullet","tuna","pickaxe","fuelF"]]};
	case "rebel": {["Rebel Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","speedbomb"]]};
	case "gang": {["Gang Market",["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["LakeBucks",["coffee","donuts"]]};
	case "liq": {["Liquor Store",["cigarette","beer","wine","jack"]]};
	case "bar": {["Bar",["beer","wine","jack"]]};
	case "drug": {["Drug Dealer",["cocainep","heroinp","marijuana"]]};
	case "oil": {["Oil Trader",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "farmingmarket": {["Seed Market",["wheat seed","sunflower seed","corn seed","bean seed","cotton seed","olive seed","opium seed","cannabis seed"]]};	
	case "glass": {["Glass Dealer",["glass"]]};
	case "iron": {["Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Items",["donuts","coffee","spikeStrip","redgull","fuelF","defusekit","BarGate","RoadBlockConc","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "vip": {["VIP Items",["water","coffee","wine","beer","donuts","cigarette","burgers","apple","redgull","tbacon","pickaxe","fuelF","storagesmall","storagebig","fuelF"]]};
};