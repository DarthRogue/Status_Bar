waitUntil {!isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};
waitUntil {isNuLL(uiNameSpace getVariable ["EPOCH_loadingScreen",displayNull])};
waitUntil {!isNull player};
waitUntil {!(isNull (findDisplay 46))};

//Status Bar Config and Startup Options

//Choose Options
//--------------------------------------------------------------------------------------------------------------------------------------		
_WSC = false;  //Option whether to use and display world space coords in the admin status bar (true or false)
//--------------------------------------------------------------------------------------------------------------------------------------

//Start the Status Bar
admin_list = ["76561198029978132"];  //"76561197996565851",

//Admins

if ((getPlayerUID player) in admin_list) then 
{	

	if (_WSC) then
	{
		[] execVM "addons\status_bar\admin\adminbar_ws.sqf";
	}
	else
	{
	if(!isNil "statusBarSelectionAdmin") then
	{	
		player removeAction statusBarSelectionAdmin;
	};
	uiSleep 1;
	statusBarSelectionAdmin = player addaction [("" + ("***Status Bar Size Selection***") +""),"addons\status_bar\admin\selectionMenuAdmin.sqf","",5,false,true,"",""]; 
	};
}
else
{	
  // Players	
  if(!isNil "statusBarSelectionPlayer") then
  {		
    player removeAction statusBarSelectionPlayer;
  };
  uiSleep 1;
	statusBarSelectionPlayer = player addaction [("" + ("***Status Bar Size Selection***") +""),"addons\status_bar\player\selectionMenuPlayer.sqf","",5,false,true,"",""];
};

uiSleep 2;
//Player prompt 
titleText ["Please use the top left action menu to select your interface size for the Status Bar to appear correctly.", "PLAIN DOWN", 1];
