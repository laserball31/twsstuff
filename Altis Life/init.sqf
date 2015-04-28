enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.7";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "nosidechat.sqf";
[] execVM "scripts\earplug\earplugInit.sqf";
[] execVM "safezones.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "messages.sqf";
[] execVM "scripts\D41_wetter.sqf";
[] execVM "custom\teargas.sqf";
enableRadio false;
enableSentences false;

[
	8*60, // seconds to delete dead bodies (0 means don't delete) 
	5*60, // seconds to delete dead vehicles (0 means don't delete)
	10*60, // seconds to delete immobile vehicles (0 means don't delete)
	8*60, // seconds to delete dropped weapons (0 means don't delete)
	15*60, // seconds to deleted planted explosives (0 means don't delete)
	0 // seconds to delete dropped smokes/chemlights (0 means don't delete)
] execVM "repetitive_cleanup.sqf";

if (isServer) then
{
	call compile preprocessFile "buildings\init.sqf";
};

0 = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;
// mod cruise control

