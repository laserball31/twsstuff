_onScreenTime = 8;
 
sleep 1; //Wait in seconds before the credits start after player is in-game

_role1 = "Welcome to LHMC!"; //In red
_role1names = ["Please read these, as they are updated sometimes!"]; //In white
_role2 = "Server Rules";
_role2names = ["You can find these listed on the objectives."]; 
_role3 = "See Teamspeak IP on map.";
_role3names = ["Teamspeak is obligated for all the cops and medics!"];
_role4 = "Please Donate!";
_role4names = ["Donating gets you rewards! See benefits at http://www.LHMC.us! We rely on donations to pay for hardware!"];
_role5 = "NO VOICE IN SIDE";
_role5names = ["Absolutely no voice in side chat."];
_role6 = "Civilian Restraining";
_role6names = ["Do not abuse this. Buy Handcuffs, Shift R next to a person, and use the Windows Key."];
_role7 = "Basic Controls";
_role7names = ["Shift R - Civilian/Cop Restrain<br/>Windows Key - Civilian Interaction Menu/Interact/Gather<br/>Y Key - Player Menu <br/>T Key - Vehicle Trunk <br/> SHIFT+H - Holster <br/> CTRL+H - Unholster <br/> SHIFT+B -  Surrender <br/> SPACEBAR - Jump"];
_role8 = "LHMC Owners/Admins/Moderators";
_role8names = ["im a cool kid69, Abu Rafiki, Alec, Kronyx, Lil Webbie, Enthussedock, MrSinCoho, Abu Mohammed, David Sanders, Fatality"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='.70' color='#F2FF00' align='right'>%1<br/></t>", _memberFunction]; //Changes colours
_finalText = _finalText + "<t size='0.60' color='#ffffff' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names]
];