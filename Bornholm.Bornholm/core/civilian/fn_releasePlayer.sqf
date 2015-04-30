#include <macro.h>
/*
	File: fn_releasePlayer.sqf
	Author: TheRick
 
	Description: Releases selected player from jail
*/
private["_admin","_clothings"];
_admin = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_clothings = ["U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite","U_C_Commoner1_1"];

if(life_is_arrested) then {
	player setPos (getMarkerPos "admin_release");
};