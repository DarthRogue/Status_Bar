# Status_Bar
Player Status Bar with Icons v 1.0

ChangeLog:

1.1
 - Added restart timer and properly aligned the bar (credit:  Salutesh)
 - Re-Added icon link for restart timer (credit: Salutesh)
1.0
 - Initial Commit
 

Instructions

1.  Place all files into your mission file

2.  Open init.sqf and add this to the last line

   //Status Bar
	if(hasInterface) then{[] execVM "fn_statusbar_with_icons.sqf"};
	
3.  Open description.ext and add this to the last line

	class RscTitles
	{
	
	#include "statusBar.hpp"
	
	};
	
	NOTE:  IF you already have an RscTitles section in description.ext, simply add '#include "statusBar.hpp"' between the brackets.
	
4.  Open scripts.txt BE filter add make the following additions

~line 20  7 playableunits !=""pto: %3 | Players: %2 | FPS: %1 ", round diag_fps, count playableUnits, EPOCH_playerCrypto, mapGridPosition player];"

~line 23 7 exec !"addons\status_bar\fn_status_bar_with_icons.sqf"

5.  Open fn_status_bar_with_icons.sqf and on line 32 add the UIDs of admins whom you want to have the world space coords and server fps display.
	
	"XXXXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXXX"  //admins id goes here
	
6.  Profit!
