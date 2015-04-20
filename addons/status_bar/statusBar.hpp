#define ST_RIGHT 0x01
class osefStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55553;
			x = safezoneX + safezoneW - 1.9;
			y = safezoneY + safezoneH - 0.1;
			w = 1.45;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="left";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};  
class osefStatusBarAdminWS {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBarAdminWS', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBarAdminWS', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBarAdminWS', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55554;
			x = safezoneX + safezoneW - 2;
			y = safezoneY + safezoneH - 0.1;
			w = 1.65;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="left";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 

class osefStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['osefStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['osefStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['osefStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55555;
			x = safezoneX + safezoneW - 1.9;
			y = safezoneY + safezoneH - 0.1;
			w = 1.45;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="left";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 