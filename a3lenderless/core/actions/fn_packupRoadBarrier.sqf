/*
    File: fn_packupRoadBarrier.sqf
    Author: Bryan "Tonic" Boardwine
    Edited by: OLLI aka Hauklotz

    Description:
    Packs up a deployed RoadBarrier.
*/
private["_RoadBarrier"];
_RoadBarrier = nearestObjects[getPos player,["_RoadBarrier"],8] select 0;
if(isNil "_Land_CncBarrier_stripes_F") exitWith {};

if(([true,"RoadBarrier",1] call life_fnc_handleInv)) then
{
    titleText["You have lifted the RoadBarrier.","PLAIN"];
    player removeAction life_action_RoadBarrierPickup;
    life_action_RoadBarrierPickup = nil;
    deleteVehicle _RoadBarrier;
};