//Remove status bar options

	
player removeAction statusBarSelection00;
player removeAction statusBarSelection01;
player removeAction statusBarSelection02;
player removeAction statusBarSelection03;
player removeAction statusBarSelection04;
player removeAction statusBarSelection05;
player removeAction statusBarSelection06;
  
uiSleep 1;
// Return to Main Menu
	//Admins
	if ((getPlayerUID player) in admin_list) then 
	{	
	statusBarSelectionAdmin = player addaction [("" + ("***Status Bar Size Selection***") +""),"addons\status_bar\admin\selectionMenuAdmin.sqf","",5,false,true,"",""]; 
	
}
else
{	
  // Players	
	statusBarSelectionPlayer = player addaction [("" + ("***Status Bar Size Selection***") +""),"addons\status_bar\player\selectionMenuPlayer.sqf","",5,false,true,"",""];
};