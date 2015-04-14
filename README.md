# Status_Bar
Player Status Bar with Icons v 1.2

ChangeLog:

1.2
 - [Added] Toxicity display
 - [Added] Switch to turn the world space coords on or off for admins
 - [Changed] Separated files to make editing of different bar types (player/admin/admin with world space) more clear and less prone to mistake
 - [Changed] Realigned the bar for the added toxicity display
 - [Fixed] Issue with admin ids referring to a global variable not present for those without Infistar AH tools

 1.1
 - [Added] Restart timer and properly aligned the bar (credit:  Salutesh)
 - [Added] Icon link for restart timer (credit: Salutesh)

1.0
 - Initial Commit
 

Instructions

1.  Place 'addons' folder into your mission file

2.  Open init.sqf and add this to the last line

   //Status Bar
	if(hasInterface) then{[] execVM "addons\Status_Bar\init_statusBar.sqf"};
	
3.  Open description.ext and add this to the last line

	class RscTitles
	{
	
	#include "addons\Status_Bar\statusBar.hpp"
	
	};
	
	NOTE:  IF you already have an RscTitles section in description.ext, simply add '#include "addons\Status_Bar\statusBar.hpp"' between the brackets.
	
4.  Open scripts.txt BE filter add make the following additions

	~line 20  7 playableunits !=""pto: %3 | Players: %2 | FPS: %1 ", round diag_fps, count playableUnits, EPOCH_playerCrypto, mapGridPosition player];"

	~line 23 7 exec !"addons\status_bar\init_statusBar.sqf"

5.  Open init_statusBar.sqf and on line 8 add the UIDs of admins whom you want to have the world space coords and server fps display.
	
	sb_admin_list = ["XXXXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXX","XXXXXXXXXXXXXXXXXXXXX"];  //admins id goes here

6.  Also in init_statusBar.sqf, select whether you want to have your admins in the list have a world space coords display or not (WSC = true/false).  This would be global for any admins in the admin list array.
	




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