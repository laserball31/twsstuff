#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Tells the player that the gang is created and throws him into it.
*/
private["_group"];
life_action_gangInUse = nil;

__SUB__(life_atmcash,(__GETC__(life_gangPrice)));

hint format[localize "STR_GNOTF_CreateSuccess",(group player) getVariable "gang_name",[(__GETC__(life_gangPrice))] call life_fnc_numberText];