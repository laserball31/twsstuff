/*
	File: fn_taxRate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Will be revised.
*/
private["_value","_ret"];
_value = _this select 0;
_ret = round(_value / 25);
_ret; 