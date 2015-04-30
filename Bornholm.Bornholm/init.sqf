enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Bornholm Life RPG v1.0.0.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
if(isDedicated && isNil("life_market_prices")) then
{
	[] call life_fnc_marketconfiguration;
	diag_log "Market prices generated!";
	
	"life_market_prices" addPublicVariableEventHandler
	{
		diag_log format["Market prices updated! %1", _this select 1];
	};
	
	//Start server fsm	
	[] execFSM "core\fsm\server.fsm";
	diag_log "Server FSM executed";
};
[] execVM "nosidechat.sqf";
[] execVM "scripts\earplug\earplugInit.sqf";
[] execVM "zlt_fastrope.sqf";
[] execVM "safezones.sqf";
[] execVM "scripts\fn_statusBar.sqf";
[] execVM "messages.sqf";
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
	[] execVM "admins.sqf";
};

0 = execVM "IgiLoad\IgiLoadInit.sqf";

StartProgress = true;
// mod cruise control

