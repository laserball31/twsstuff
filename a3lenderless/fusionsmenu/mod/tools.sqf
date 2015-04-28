_pathtotools = "fusionsmenu\mod\tools\";
_EXECscript1 = 'player execVM "'+_pathtotools+'%1"';



if ((getPlayerUID player) in ["]) then { //all mods
	if ((getPlayerUID player) in []) then { //mods Go Here aswell
		adminmenu =
		[
			["AP Menu",true],
				["Tools", [3], "#USER:ToolsMenu", -5, [["expression", ""]], "1", "1"],
				["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]		
		];};
} else {
adminmenu =
[
	["",true],
		//["Toggle Debug", [2], "", -5, [["expression", format[_execdebug,"playerstats.sqf"]]], "1", "1"],
		["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];};
ToolsMenu =
[
	["Tools",true],
        ["Add Money (10,000)", [8],  "", -5, [["expression", format[_EXECscript1,"add_money10000.sqf"]]], "1", "1"],
		["Add Money (100,000)", [9],  "", -5, [["expression", format[_EXECscript1,"add_money100000.sqf"]]], "1", "1"],
		[".", [6],  "", -5, [["expression", format[_EXECscript1,"heal.sqf"]]], "1", "1"],
		[".", [7],  "", -5, [["expression", format[_EXECscript1,"healp.sqf"]]], "1", "1"],
		["Spectate", [8],  "", -5, [["expression", format[_EXECscript1,"spectate.sqf"]]], "1", "1"],		
		["Building Repair", [4],  "", -5, [["expression", format[_EXECscript1,"repairbuild.sqf"]]], "1", "1"],
                        ["", [-1], "", -5, [["expression", ""]], "1", "0"],
			["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

		
showCommandingMenu "#USER:adminmenu";