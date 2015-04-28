waituntil {!alive player ; !isnull (finddisplay 46)};
if ((getPlayerUID player) in []) then {
;
act = player addaction [("<t color=""#0074E8"">" + ("Admin Tool") +"</t>"),"fusionsmenu\admin\tools.sqf","",5,false,true,"",""];

};

if ((getPlayerUID player) in []) then {
;
act = player addaction [("<t color=""#0074E8"">" + ("MOD Tool") +"</t>"),"fusionsmenu\admin\tools.sqf","",5,false,true,"",""];

};