#define ST_RIGHT 0x01
#define ST_LEFT  0x00

class verySmallStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['verySmallStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['verySmallStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['verySmallStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55553;
			x = safezoneX + safezoneW - 2.25;
			y = safezoneY + safezoneH - 0.1;
			w = 1.6;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};
class smallStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['smallStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['smallStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['smallStatusBarAdmin', objNull]";
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
			w = 1.5;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class normalStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['normalStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['normalStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['normalStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55555;
			x = safezoneX + safezoneW - 1.5;
			y = safezoneY + safezoneH - 0.07;
			w = 1.1;
			h = 0.06;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class largeStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['largeStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['largeStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['largeStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55556;
			x = safezoneX + safezoneW - 1.35;
			y = safezoneY + safezoneH - 0.08;
			w = 1.15;
			h = 0.05;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class veryLargeStatusBarAdmin {
	idd = -1;
	onLoad = "uiNamespace setVariable ['veryLargeStatusBarAdmin', _this select 0]";
	onUnload = "uiNamespace setVariable ['veryLargeStatusBarAdmin', objNull]";
	onDestroy = "uiNamespace setVariable ['veryLargeStatusBarAdmin', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55557;
			x = safezoneX + safezoneW - 1.2;
			y = safezoneY + safezoneH - 0.07;
			w = 1.1;
			h = 0.05;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};   
class smallStatusBarAdminWS {
	idd = -1;
	onLoad = "uiNamespace setVariable ['smallStatusBarAdminWS', _this select 0]";
	onUnload = "uiNamespace setVariable ['smallStatusBarAdminWS', objNull]";
	onDestroy = "uiNamespace setVariable ['smallStatusBarAdminWS', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55558;
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
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 

class verySmallStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['verysmallStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['verysmallStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['verysmallStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55559;
			x = safezoneX + safezoneW - 2.25;
			y = safezoneY + safezoneH - 0.1;
			w = 1.6;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};
class smallStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['smallStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['smallStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['smallStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55560;
			x = safezoneX + safezoneW - 1.9;
			y = safezoneY + safezoneH - 0.1;
			w = 1.5;
			h = 0.07;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.04;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class normalStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['normalStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['normalStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['normalStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55561;
			x = safezoneX + safezoneW - 1.5;
			y = safezoneY + safezoneH - 0.07;
			w = 1.1;
			h = 0.06;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class largeStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['largeStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['largeStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['largeStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55562;
			x = safezoneX + safezoneW - 1.35;
			y = safezoneY + safezoneH - 0.08;
			w = 1.15;
			h = 0.05;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
}; 
class veryLargeStatusBar {
	idd = -1;
	onLoad = "uiNamespace setVariable ['veryLargeStatusBar', _this select 0]";
	onUnload = "uiNamespace setVariable ['veryLargeStatusBar', objNull]";
	onDestroy = "uiNamespace setVariable ['veryLargeStatusBar', objNull]";
	fadein = 0;
	fadeout = 0;
	duration = 10e10;
	movingEnable = 0;
	controlsBackground[] = {};
	objects[] = {};
	class controls {
		class statusBarText {
			idc = 55563;
			x = safezoneX + safezoneW - 1.2;
			y = safezoneY + safezoneH - 0.07;
			w = 1.1;
			h = 0.05;
			shadow = 2;
			colorBackground[] = { 0, 0, 0, 0.5 };  // uncomment and increase 4th number to have a background
			font = "PuristaSemibold";
			size = 0.03;
			type = 13;
			style = 2;
			text="";
			class Attributes {
				align="center";
				color = "#ffffff";//#5fe60c
			};
		};
	};
};  