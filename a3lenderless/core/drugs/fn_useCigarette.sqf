/*
	File: fn_useCigarette.sqf
	@Deo	
	Description:
	Use Cigarette
*/

#include <macro.h>
private["_smoke"];

[[0,format["%1 enjoys a smooth, refreshing Cigarette.",name player]],"life_fnc_broadcast",(position player) nearEntities [["Man"], 50],false] spawn life_fnc_MP;

_smoke = "SmokeShell" createVehicle position player;
if (vehicle player != player) then
{
	_smoke attachTo [vehicle player, [0,-1,0]];
} 
else 
{
	_smoke attachTo [player, [0,0.05,1.3]];
};