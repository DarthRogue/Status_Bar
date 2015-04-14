//Status Bar Config and Startup Options

//Choose Options
//--------------------------------------------------------------------------------------------------------------------------------------		
WSC = false;  //Option whether to use and display world space coords in the admin status bar (true or false)


sb_admin_list = ["76561197996565852"];	
//--------------------------------------------------------------------------------------------------------------------------------------

//Start the Status Bar
	
if ((getPlayerUID player) in sb_admin_list) then  //admins id here
{ 
	if (((getPlayerUID player) in sb_admin_list) && (WSC)) then
	{
		[] execVM "addons\status_bar\adminbar_ws.sqf";
	}
	else
	{
		[] execVM "addons\status_bar\adminbar.sqf";
	};
} 
else 
{
	[] execVM "addons\status_bar\PlayerBar.sqf";
};