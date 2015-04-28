/*
	File: Alcoholtest
	Author: Backer
	
	Description:
	Alkoholtest for Cops
*/

private["_unit","_dText","_drunken"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Test being processed...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test failed."};


if(_unit getVariable["drunken",false]) then { _drunken = "2,4 Per mil"; } else { _drunken = "0,0 Promille"; };
hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'>Alcohol: </t>%2<br/><t color='#FFD700'></t>%3<br/><br/><t color='#FF0000'>%4</t>"
,name _unit,_drunken];