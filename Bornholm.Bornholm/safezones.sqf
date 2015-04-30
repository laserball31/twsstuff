
/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
	Traduit et édité par : Johnny
    
    DESCRIPTION:
    Tue joueur tirant dans une zone safe
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["kavalasafezone", 75],["rebhqsafezone", 150],["reb_con_area_3", 400],["reb_con_area_2", 400],["reb_con_area_1", 400],["reb_con_area_4", 400]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "You cannot fire inside a Safe Zone!"

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{
	player allowDamage false;
	};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
			 titleText [MESSAGE, "PLAIN", 3];
			 player allowDamage false; //Pan t'es mort
			 hint parseText format["<t color='#01B0F0'><t size ='2.5'><t align='center'>Safe Zone<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No firing.<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No killing.<br/><t color='#FFFFFF'><t align='center'><t size='1.5'>No knocking out.<br/><t"];
			 };
        }];  
	};
};