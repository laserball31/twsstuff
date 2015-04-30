/*
	File: D41_wetter.sqf
	Author: Distrikt41.de - Dscha

	Description:
	Random Weather Script - What else can i say?
*/
	private ["_fnc_D41_WetterWerte"];

	//PreLoad Variablen
	//if (isDedicated) then
	//{
		D41_Nebel = [0,0,0];
		D41_Wellen = 0;
		D41_Vorschau = 0.0;
		D41_Wind = [0, 0, true];
		D41_Regen = 0;
		D41_RegenCounter = 1;
	//};

	_fnc_D41_WetterWerte =
	{
		if (isDedicated) then
			{
				D41_ChanceN = round(random 100);
				if(D41_ChanceN <= 10) then
					{
						D41_Nebel = [0,0,0]; D41_Wellen = 0; D41_Vorschau = 0.1; D41_Wind = [2, 2, true]; D41_Regen = 0; D41_RegenCounter = 0;
						D41_WMod = round(random 9);
						if(D41_WMod == 0)	then {D41_Nebel = [0.7, 0.1,10];		D41_Regen = 0.1;	D41_Vorschau = 0.3;}; //Dicht
						if(D41_WMod == 1)	then {D41_Nebel = [0.7, 0.2,10];		D41_Regen = 0.2;	D41_Vorschau = 0.3;};
						if(D41_WMod == 2)	then {D41_Nebel = [0.7, 0.3,10];		D41_Regen = 0.2;	D41_Vorschau = 0.2;}; //geht so, akzeptabler Nebel
						if(D41_WMod == 3)	then {D41_Nebel = [0.7, 0.1,15];	D41_RegenCounter = 0;}; //Dicht
						if(D41_WMod == 4)	then {D41_Nebel = [0.6, 0.1,15];	D41_Regen = 0.2;	D41_Vorschau = 0.3;};
						if(D41_WMod == 5)	then {D41_Nebel = [0.5, 0.1,15];	D41_RegenCounter = 0;}; //geht so, akzeptabler Nebel
						if(D41_WMod == 6)	then {D41_Nebel = [0.4, 0.1,20];	D41_RegenCounter = 0;};
						if(D41_WMod == 7)	then {D41_Nebel = [0.3, 0.1,20];	D41_Regen = 0.2;	D41_Vorschau = 0.2;};
						if(D41_WMod == 8)	then {D41_Nebel = [0.2, 0.1,20];	D41_RegenCounter = 0;}; //geht so, akzeptabler Nebel
						if(D41_WMod == 9)	then {D41_Nebel = [0.1, 0.1,40];	D41_Regen = 0.4;	D41_Wellen = 1;	D41_Vorschau = 0.1;}; //Hoch halt
					};

				if(D41_ChanceN >=11 && D41_ChanceN <= 20 && D41_RegenCounter == 0) then
					{
						D41_Nebel = [0,0,0]; D41_Wellen = 0; D41_Vorschau = 1; D41_Regen = 0; D41_RegenCounter = 1;
						D41_WMod = round(random 9);
						if(D41_WMod == 0)	then {D41_Nebel = 0.4;	D41_Wellen = 1;		D41_Vorschau = 1; 	D41_Wind = [100, 100, false];	D41_Regen = 1.0;[[3,"<t size='3'><t color='#FF0000'>SEVERE WEATHER WARNING</t></t> <br/><t size='1.5'>Expected wind speeds of 62 mph with rain and fog!</t>"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;};
						if(D41_WMod == 1)	then {D41_Nebel = 0.3;	D41_Wellen = 1;		D41_Vorschau = 1; 	D41_Wind = [6, 6, true];	D41_Regen = 0.6;};
						if(D41_WMod == 2)	then {D41_Nebel = 0.1;	D41_Wellen = 1;		D41_Vorschau = 0.9; D41_Wind = [6, 6, true];	D41_Regen = 0.5;};
						if(D41_WMod == 3)	then {D41_Nebel = 0.2;	D41_Wellen = 0.8;	D41_Vorschau = 0.8; D41_Wind = [0, 10, true];	D41_Regen = 0.5;};
						if(D41_WMod == 4)	then {D41_Nebel = 0.1;	D41_Wellen = 0.8;	D41_Vorschau = 0.7; D41_Wind = [11, 0, true];	D41_Regen = 0.3;};
						if(D41_WMod == 5)	then {D41_Nebel = 0.1;	D41_Wellen = 0.6;	D41_Vorschau = 0.7; D41_Wind = [0, 10, true];	D41_Regen = 0.3;};
						if(D41_WMod == 6)	then {D41_Nebel = 0.1;	D41_Wellen = 0.4;	D41_Vorschau = 0.6; D41_Wind = [9, 0, true];	D41_Regen = 0.2;};
						if(D41_WMod == 7)	then {D41_Nebel = 0.1;	D41_Wellen = 0.2;	D41_Vorschau = 0.5; D41_Wind = [4, 4, true];	D41_Regen = 0.2;};
						if(D41_WMod == 8)	then {D41_Nebel = 0.1;	D41_Wellen = 0.1;	D41_Vorschau = 0.4; D41_Wind = [3, 4, true];	D41_Regen = 0.2;};
						if(D41_WMod == 9)	then {D41_Nebel = 0.1;	D41_Wellen = 0;		D41_Vorschau = 0.4; D41_Wind = [4, 3, true];	D41_Regen = 0.1;};
					};

				if(D41_ChanceN >=11 && D41_ChanceN <= 30 && D41_RegenCounter == 1) then {D41_ChanceN = 31};

				if(D41_ChanceN >=31 && D41_ChanceN <= 90) then
				{
					D41_Nebel = [0,0,0]; D41_Wellen = 0; D41_Vorschau = 0.0; D41_Wind = [0, 0, true]; D41_Regen = 0; D41_RegenCounter = 0;
					D41_WMod = round(random 9);
					if(D41_WMod == 0)	then {D41_Vorschau = 0.1;};
					if(D41_WMod == 1)	then {D41_Vorschau = 0.1;};
					if(D41_WMod == 2)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 3)	then {D41_Vorschau = 0.0};
					if(D41_WMod == 4)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 5)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 6)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 7)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 8)	then {D41_Vorschau = 0.0;};
					if(D41_WMod == 9)	then {D41_Vorschau = 0.0;};
					
				};

				if(D41_ChanceN >=91 && D41_ChanceN <= 100) then
				{
					D41_Nebel = [0,0,0]; D41_Wellen = 0; D41_Vorschau = 0.0; D41_Wind = [0, 0, true]; D41_Regen = 0; D41_RegenCounter = 1;
					D41_WMod = round(random 2);
					if(D41_WMod == 0)	then {D41_Vorschau = 0.1;};
					if(D41_WMod == 1)	then {D41_Vorschau = 0.1;};
					if(D41_WMod == 2)	then {D41_Vorschau = 0.0;};				
				};
				Diag_log format ["::::::::: WETTER SYSTEM ::::::::: D41_ChanceN = %1 ::: D41_WMod = %2",D41_ChanceN, D41_WMod];
				publicVariable "D41_Nebel";
				publicVariable "D41_Wellen";
				publicVariable "D41_Vorschau";
				publicVariable "D41_Wind";
				publicVariable "D41_Regen";
			};
	};

	if(isDedicated)then
	{
		while{true}do
		{
			[] call _fnc_D41_WetterWerte;
			sleep 1;
			60 setfog (D41_Nebel);
			60 setRain (D41_Regen);
			0 setOvercast (D41_Vorschau);
			setWind (D41_Wind);
			60 setWaves (D41_Wellen);
			sleep 7200;
		};
	};

	//JIP und sync Gedöhns
	if (!isDedicated) then
	{
		while{true}do
		{
			60 setfog (D41_Nebel);
			60 setRain (D41_Regen);
			0 setOvercast (D41_Vorschau);
			setWind (D41_Wind);
			60 setWaves (D41_Wellen);
			//hint format ["::::::::: WETTER SYSTEM ::::::::: D41_ChanceN = %1 ::: D41_WMod = %2",D41_ChanceN, D41_WMod];
			uiSleep 120;
		};
	};