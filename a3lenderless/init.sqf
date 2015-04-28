// Server SetVariables
if (isServer) then {
	bank setvariable ["robbed",false,true];
	stash1 setvariable ["robbed",false,true];
	stash2 setvariable ["robbed",false,true];
	stash3 setvariable ["robbed",false,true];
	stash4 setvariable ["robbed",false,true];
};

enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Arma3Life";
[] execVM "briefing.sqf";
[] execVM "KRON_Strings.sqf";
execVM "fusionsmenu\admin\activate.sqf";
execVM "fusionsmenu\admin\loop.sqf";
execVM "fusionsmenu\mod\activate.sqf";
execVM "fusionsmenu\mod\loop.sqf";
[] execVM "hackerSpanker.sqf";
[] execVM "hackerspanker2.sqf";

[
	12*60, // seconds to delete dead bodies (0 means don't delete) 
	15*60, // seconds to delete dead vehicles (0 means don't delete)
	0, // seconds to delete immobile vehicles (0 means don't delete)
	2*60, // seconds to delete dropped weapons (0 means don't delete)
	10*60, // seconds to deleted planted explosives (0 means don't delete)
	0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM 'repetitive_cleanup.sqf';	

profilenamespace setvariable ['GUI_BCG_RGB_R',1.0];
profilenamespace setvariable ['GUI_BCG_RGB_G',0.0];
profilenamespace setvariable ['GUI_BCG_RGB_B',0.0];
profilenamespace setvariable ['GUI_BCG_RGB_A',0.7];

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};