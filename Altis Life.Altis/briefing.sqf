waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["rules","Rules"];
player createDiarySubject ["illegalactivity","Illegal activity"];
player createDiarySubject ["illegalvehicles","Illegal vehicles"];
player createDiarySubject ["illegalgear","Civilian Illegal Gear"];
player createDiarySubject ["trafficlaws","Altis Traffic Laws"];
player createDiarySubject ["kickbanoffences","Kickable/Bannable Offences"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	
player createDiaryRecord ["kickbanoffences", //Container
	[
		"Kickable/Bannable Offences", //Subsection
			"
			- Vehicular Death Match (VDM) (24H)<br/>
			- Spawn Killing Cops/Medics/Civilians (24H)<br/>
			- Abusing cop powers (24H)<br/>
			- Kamikaze (24H)<br/>
			- Combat Logging (24H)<br/>
			- Disconnecting while your house is being raided (24H)<br/>
			- Abusive language, swearing, insulting or discrimination. (Admin decision)<br/>
			- Exploiting glitches (Perm)<br/>
			- Money glitching (Perm)<br/>
			- HACKING or encouraging people to hack (Perm)<br/>
			- Making hack threats (Perm)<br/>
			- Mic spamming (Kick)<br/>
			- Cops working together with civilians (24H + Blacklist)<br/>
			- “Vote to kick” or “vote for admin” spamming. (Kick)<br/>
			- Advertising whatsoever. (Perm)<br/>
			- Abusing spike strips to kill people (24H)<br/>
			- Not following up Admin orders (24H)<br/>
			- Multiple offenses of LHMC rules result in longer bans<br/>
			- High Ping (Kick)<br/>
			"
	]
];
	
player createDiaryRecord ["rules", //Container
	[
		"General Rules", //Subsection
			"
			- Rebels need to declare war before killing in cities: Send a dispatch message to the cops<br/>
			- Proof is required when asking for a kick/ban. (screenshots, videos or multiple eyewitnesses)<br/>
			- Do not take justice in your own hands, contact an admin if you have complaints<br/>
			- Not knowing the rules is not a valid reason for breaking them<br/>
			- Always follow up any Admin orders!<br/>
			"
	]
];

player createDiaryRecord ["rules", //Container
	[
		"Cops Rules", //Subsection
			"
			- All cops must be on teamspeak<br/>
			- Chain of command: lower ranks listen to higher ranks<br/>
			- Do not impound any illegal vehicles, they need to be destroyed <br/>
			- Price of tickets: (Refusing 3 times -> send to jail)<br/>
			- Maximum twice the amount of bounty, but less than 100k (if on wanted list) <br/>
			      - 10.000 for failing to comply with commands, civilians entering cop base, hindering cops<br/>
			      - 20.000 for speeding, reckless driving, car theft, robbing/looting <br/>
			      - 50.000 for escaping jail/assisting in escaping jail<br/>
			- Failing to pay a ticket three times is reason for jail time<br/>
			- Camping illegal areas is not allowed<br/>
			- Restraining for your own safety in a high risk area is allowed<br/>
			- All available cops need to respond to a bank robbery<br/>
			- Tasers should always be the first choice of weapon for cops<br/>
			- Cops can not revive suspect after killing them<br/>
			- Cops cannot randomly pull over vehicles with no reasonable suspicion<br/>
			- Relogging for transport to respond to any dispatch, including bank robbery, is not allowed<br/>
			- All vehicles can be searched and players can be searched and checked for licenses at police checkpoints<br/>   
			- Impounding vehicles is an essential part of cops, to keep the streets and server clean<br/>
			- Civilians may be taken off the Wanted List by cops with Superintendent rank and higher<br/>
			- Raiding houses is only allowed when authorized by an inspector or higher rank<br/>
			- Cops must always wear the appropriate Cop Clothing<br/>
			- Cops are not allowed in any Rebel Areas<br/>
			"
	]
];

player createDiaryRecord ["rules", //Container
	[
		"Medic Rules", //Subsection
			"
			- Medics cannot use any weapons<br/>
			- Medics cannot kill<br/>
			- The medic faction cannot be abused for the use of rebels or gangs<br/>
			- Medics cannot abuse the revive system for money gain<br/>
			- Medics are only allowed in cop base when someone needs to be healed or revived<br/>
			- If a medic is taking part in a police operation they must only revive those who the police orders them to<br/>
			- When medics are exceeding the speed limits they need their sirens switched on<br/>
			"
	]
];

player createDiaryRecord ["rules", //Container
	[
		"Civilian Rules", //Subsection
			"
			- Combat logging is forbidden, this includes logging off during firefights, chases, while being tazed or when restrained<br/>
			- Civilians can get restrained around crime scenes<br/>
			- Civilians can be searched with probable cause or within/near crime scenes<br/>
			- Three times refusing to pay a ticket will get you jail time<br/>
			- No-fly zone in all cities and above the Federal Reserve, all civilian choppers may be shot on sight<br/>
			- Cop bases are off limit for civilians<br/>
			- Ifrit and striders are not allowed in the following cities: Athira, Anthrakia, Sofia, Kavala, Pyrgos<br/>
			"
	]
];

player createDiaryRecord ["illegalactivity", //Container
	[
		"Illegal Activities", //Subsection
			"
			- All drug activities<br/>
			- Selling vehicles at the Chop Shop<br/>
			- Turtle poaching<br/>
			- (Bank) Robbery<br/>
			- Buying illegal weapons/items at any gang hideouts/rebel areas<br/>
			- Distributing any illegal weapons/vehicles/items<br/>
			- Looting bodies<br/>
			"
	]
];

player createDiaryRecord ["illegalvehicles", //Container
	[
		"Illegal Vehicles", //Subsection
			"
			- Armed Offroads<br/>
			- Go Karts (out of go kart track)<br/>
			- Ifrit / Strider inside the following cities: Athira, Anthrakia, Sofia, Kavala, Pyrgos<br/>
			"
	]
];

player createDiaryRecord ["illegalgear", //Container
	[
		"Illegal Gear", //Subsection
			"
			- RPG’s<br/>
			- Automatic weapons<br/>
			- Explosive charges<br/>
			- Spikestrips<br/>
			- Bolt cutters<br/>
			- Blasting charges<br/>
			- Lockpicks<br/>
			- Grenades<br/>
			- Drugs<br/>
			- Gold Bars<br/>
			- Turtle Meat<br/>
			"
	]
];

player createDiaryRecord ["trafficlaws", //Container
	[
		"Altis Traffic Laws", //Subsection
			"
			- Drive on the right side of the road<br/>
			- Civilians need to walk on the sidewalk<br/>
			- Obey all traffic signs<br/>
			- Speed limit in town: 50 km/h<br/>
			- Speed limit outside towns: 120 km/h<br/>
			- Civilian choppers are not allowed in cities<br/>
			- Parking on the road is not allowed<br/>
			- Vehicle lights must be switched on at night times<br/>
			"
	]
];