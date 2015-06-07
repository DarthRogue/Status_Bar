# Status_Bar
Player Status Bar with Icons v 1.35

ChangeLog:

1.35
 - [Changed] Status bar will now automatically resize based on player interface size
 - [Removed] Player size slection via addActions

1.3
 - [Added] Ability for players to select a different size and position for the status bar based on their Interface Size setting in A3 Video options

1.2
 - [Added] Toxicity display
 - [Added] Icon for toxicity (Thanks, Nightmare!)
 - [Added] Switch to turn the world space coords on or off for admins
 - [Changed] Separated files to make editing of different bar types (player/admin/admin with world space) more clear and less prone to mistake
 - [Changed] Realigned the bar for the added toxicity display
 - [Fixed] Issue with admin ids referring to a global variable not present for those without Infistar AH tools

1.1
 - [Added] Restart timer and properly aligned the bar (credit:  Salutesh)
 - [Added] Icon link for restart timer (credit: Salutesh)

1.0
 - Initial Commit
 

Instructions:

See Install file included with download






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
				  