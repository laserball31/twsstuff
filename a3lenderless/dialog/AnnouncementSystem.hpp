class Life_Announcement_Sys
{
idd = 12198;
movingEnable = true;
enableSimulation = true;
duration = 500000;
onLoad = "uiNamespace setVariable [""tabletmenu"", _this select 0]; tabletmenuisopen = 1;";
onunload = "tabletmenuisopen = 0;";
objects[] = { };
class controls {
class Life_RscTitleBackground: Life_RscText
{
	idc = -1;

	x = 4 * GUI_GRID_W + GUI_GRID_X;
	y = 5 * GUI_GRID_H + GUI_GRID_Y;
	w = 32 * GUI_GRID_W;
	h = 1 * GUI_GRID_H;
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
};
class MainBackground: Life_RscText
{
	idc = -1;

	x = 4 * GUI_GRID_W + GUI_GRID_X;
	y = 6.1 * GUI_GRID_H + GUI_GRID_Y;
	w = 32 * GUI_GRID_W;
	h = 4.5 * GUI_GRID_H;
	colorBackground[] = {0,0,0,0.7};
};
class Title: Life_RscTitle
{
	idc = 2901;

	text = "Message Announcement"; //--- ToDo: Localize;
	x = 0.159998 * safezoneW + safezoneX;
	y = 0.260938 * safezoneH + safezoneY;
	w = 0.510004 * safezoneW;
	h = 0.031875 * safezoneH;
	colorText[] = {0.95,0.95,0.95,1};
};
class CloseButtonKey: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	idc = 1005;
	text = "Close"; //--- ToDo: Localize;
	x = 0.159998 * safezoneW + safezoneX;
	y = 0.452188 * safezoneH + safezoneY;
	w = 0.132813 * safezoneW;
	h = 0.031875 * safezoneH;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.8};
};
class SendMessage: Life_RscButtonMenu
{
	onButtonClick = "[] call fnc_global_message";
	idc = 1006;
	text = "Send Announcement"; //--- ToDo: Localize;
	x = 0.383124 * safezoneW + safezoneX;
	y = 0.388437 * safezoneH + safezoneY;
	w = 0.170001 * safezoneW;
	h = 0.031875 * safezoneH;
	colorText[] = {0.95,0.95,0.95,1};
	colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};

};
class AnnouncementTex : Life_RscEdit
{
	idc = 1003;
	text = "";
	x = 0.04 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
	y = 0.35;
	w = (13 / 40);
	h = (1 / 25);
};
};
};