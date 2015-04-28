/*
	File: Drogentestest
	Author: Backer
	
	Description:
	Drogen für Cops
*/

private["_unit","_dText","_drug"];

_unit = cursorTarget;
if(isNull _unit) exitWith {};

hint "Test being performed...";
sleep 2;

if(player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint "Test failed."};


if(_unit getVariable["drug",false]) then { _drug = "Positive"; } else { _drug = "Negative"; };
hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'>Drugtest: </t>%2<br/><t color='#FFD700'></t>%3<br/><br/><t color='#FF0000'>%4</t>"
,name _unit,_drug];