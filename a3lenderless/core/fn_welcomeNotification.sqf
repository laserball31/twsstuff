/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Welcome %1, Please read the following it's important!",profileName] hintC
[
	"Welcome to ArmA 3 Life, custom map by the Endless Gaming Community.",
	"Welcome to Lakeside! A few things that you need to be aware of!",
	"An interaction key has been introduced which replaces the large majority of scroll wheel actions, this was for performance issues. By default this key is [Left Windows], you can change this key by pressing ESC and going to Configure->Controls->Custom
	and bind 'Use Action 10' to a single key like H. This key is used for the following actions",
	"Picking up items and money.",
	"Fishing and gathering Note: Mining can now be done with Tab",
	"Interacting with players (as a cop)",
	"Interacting with vehicles (repairing and cop actions)",
	"",
	"If you are having issues with interacting / picking up items just wait. A quick way to know when you can interact with that item if the server allows it is by pressing your tilde key (~) and using the circle to highlight the object, when it says for example 'Pile of Money' then
	that means you can pick it up!.",
	"",
	"You are welcome to join our TeamSpeak 3, where you can talk to fellow players, get help or whitelisted, and just have a good time.",
	"",
	"TS3 IP: ts50.teamspeak3.com:8344"
];
	