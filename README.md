# Status_Bar
Player Status Bar with Icons v 1.1

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



CREDITS:

Author: Osef (Ported to EpochMod by piX)
	Edited by: [piX]
	Description: Puts a small bar in the bottom centre of screen to display in-game information
	


	Modified by: ScaRR
	Description: Modified status bar to display player Krypto, Next Server restart time based on real_date.dll from Kilzone Kid
				 (which can be found at http://killzonekid.com/arma-extension-real_date-dll-v3-0/)
				 and display the Thirst, Hunger and damage as percentages.
				 Added colouring to the status bar elements, that changes gradually depending on the percentages.
				 Added flashing of the values if values are within a certain threshold
				 
	Modified by: Darth_Rogue  
	Description:  Added admin section to display real-time server FPS and world space coords
				  Modified health, food and drink values to display from a starting point of 100% instead of starting at 0%
				  Removed Hex color scheme and went to a hard coded method easier for folks to understand and edit colors
				  Removed restart timer due to multiple glitches (divide by 0 errors with certain time zones)
				  Added second section to hpp file to provide properly aligned background for players vs. admin menus
				  Added GRIDREF display for players
				  
	Modified by:  Salutesh
	Description:  Added back in restart timer and properly aligned the bar
				  Added back in restart timer icon