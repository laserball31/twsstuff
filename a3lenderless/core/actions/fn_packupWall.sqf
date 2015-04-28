/*
    File: fn_packupwall.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed wall.
*/
private["_wall"];
_wall = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0;
if(isNil "_wall") exitWith {};

if(([true,"wall",1] call life_fnc_handleInv)) then
{
    titleText["You have lifted the wall.","PLAIN"];
    player removeAction life_action_wallPickup;
    life_action_wallPickup = nil;
    deleteVehicle _wall;
};