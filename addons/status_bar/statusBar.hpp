#define ST_RIGHT 0x01

class statusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['statusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['statusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['statusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55555;
			x = 0.185 * safezoneW + safezoneX;
			y = 0.940044 * safezoneH + safezoneY;
			w = 0.65 * safezoneW;
			h = 0.0330033 * safezoneH;
			shadow = 1;
			colorBackground[] = { 0, 0, 0, 0.5 }; // make the last number in the array 0 to get rid of the background
			font = "PuristaSemibold";
			size = "0.02 * safezoneH";
			type = 13;
			style = 2;
			text="loading player stats ...";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};