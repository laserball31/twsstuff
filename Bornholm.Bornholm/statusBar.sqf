 
waitUntil {!(isNull (findDisplay 46))};
disableSerialization;
 
_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Welcome to the LHMC Community, %1!", _rscLayer];
 
[] spawn {
sleep 5;
_statusText = "Welcome";
_counter = 180;
_timeSinceLastUpdate = 0;
while {true} do
{
sleep 1;
_counter = _counter - 1;
_statusText = "http://lhmc.us";
((uiNamespace getVariable "statusBar")displayCtrl 1000)ctrlSetText format["%3 | FPS: %1 | Alive Players : %2 | TS3 : 62.210.114.192   ", round diag_fps, count playableUnits, _statusText, _counter];
};
};
 