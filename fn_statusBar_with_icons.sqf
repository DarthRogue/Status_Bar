waitUntil {!(isNull (findDisplay 46))};
disableSerialization;


/*
	File: fn_statusBar.sqf
	Author: Osef (Ported to EpochMod by piX)
	Edited by: [piX]
	Description: Puts a small bar in the bottom centre of screen to display in-game information
	


	Modified by: ScaRR
	Description: Modified status bar to display player Krypto, Next Server restart time based on real_date.dll from Kilzone Kid
				 (which can be found at http://killzonekid.com/arma-extension-real_date-dll-v3-0/)
				 and display the Thirst, Hunger and damage as percentages.
				 Added colouring to the status bar elements, that changes gradually depending on the percentages.
				 Added flashing of the values if values are within a certain threshold
				 
	Modified by: Darth_Rogue  4/11/15
	Description:  Added admin section to display real-time server FPS and world space coords
				  Modified health, food and drink values to display from a starting point of 100% instead of starting at 0%
				  Removed Hex color scheme and went to a hard coded method easier for folks to understand and edit colors
				  Removed restart timer due to multiple glitches (divide by 0 errors with certain time zones)
				  Added second section to hpp file to provide properly aligned background for players vs. admin menus
				  Added GRIDREF display for players
	
	PLEASE KEEP CREDITS - THEY ARE DUE TO THOSE WHO PUT IN THE EFFORT!	
*/

if ((getPlayerUID player) in [
"XXXXXXXXXXXXXXXXXX" //admins id goes here
                                                                 
]) then { 


_rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
systemChat format["Loading Admin info...", _rscLayer];
[] spawn {

	sleep 5;
	//set the color values.
	//Additional color codes can be found here:  http://html-color-codes.com/
	_colourDefault 	= parseText "#adadad"; //set your default colour here
	_colour100 		= parseText "#336600";
	_colour90 		= parseText "#339900";
	_colour80 		= parseText "#33CC00";
	_colour70 		= parseText "#33FF00";
	_colour60 		= parseText "#66FF00";
	_colour50 		= parseText "#CCFF00";
	_colour40 		= parseText "#CCCC00";
	_colour30 		= parseText "#CC9900";
	_colour20 		= parseText "#CC6600";
	_colour10 		= parseText "#CC3300";
	_colour0 		= parseText "#CC0000";
	_colourDead 	= parseText "#000000";
	_uid = getPlayerUID player;	
	
		
	while {true} do {
	
		sleep 1;
				
		//moved the creation of the status bar inside the loop and create it if it is null,
		//this is to handle instance where the status bar is disappearing 
		if(isNull ((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)) then{
				diag_log "statusbar is null create";
				disableSerialization;
				_rscLayer = "osefStatusBarAdmin" call BIS_fnc_rscLayer;
				_rscLayer cutRsc["osefStatusBarAdmin","PLAIN"];
		};		
		
		//initialize variables and set values
		_unit = _this select 0;
		_damage = round ((1 - (damage player)) * 100);
		//_damage = (round(_damage * 100));
		_hunger = round((EPOCH_playerHunger/5000) * 100);
		_thirst = round((EPOCH_playerThirst/2500) * 100);
		_wallet = EPOCH_playerCrypto;
		_stamina = round(EPOCH_playerStamina * 100) / 100;
		_energy = round(EPOCH_playerEnergy);
		_energyPercent =  floor((_energy / 2500 ) * 100);
		_serverFPS = if (typeName EPOCH_diag_fps == "SCALAR") then [{EPOCH_diag_fps},{"MANIPULATED"}],
		_pos = getPosATL player;
		_dir = getDir (vehicle player);
		
		//Colour coding
		//			Damage
			
		_colourDamage = _colourDefault;
		if(_damage >= 100) then{_colourDamage = _colour100;};
		if((_damage >= 90) && (_damage < 100)) then {_colourDamage =  _colour90;};
		if((_damage >= 80) && (_damage < 90)) then {_colourDamage =  _colour80;};
		if((_damage >= 70) && (_damage < 80)) then {_colourDamage =  _colour70;};
		if((_damage >= 60) && (_damage < 70)) then {_colourDamage =  _colour60;};
		if((_damage >= 50) && (_damage < 60)) then {_colourDamage =  _colour50;};
		if((_damage >= 40) && (_damage < 50)) then {_colourDamage =  _colour40;};
		if((_damage >= 30) && (_damage < 40)) then {_colourDamage =  _colour30;};
		if((_damage >= 20) && (_damage < 30)) then {_colourDamage =  _colour20;};
		if((_damage >= 10) && (_damage < 20)) then {_colourDamage =  _colour10;};
		if((_damage >= 1) && (_damage < 10)) then {_colourDamage =  _colour0;};
		if(_damage < 1) then{_colourDamage =  _colourDead;};
		
		
		
		//				Hunger
		_colourHunger = _colourDefault;
		if(_hunger >= 100) then{_colourHunger = _colour100;};
		if((_hunger >= 90) && (_hunger < 100)) then {_colourHunger =  _colour90;};
		if((_hunger >= 80) && (_hunger < 90)) then {_colourHunger =  _colour80;};
		if((_hunger >= 70) && (_hunger < 80)) then {_colourHunger =  _colour70;};
		if((_hunger >= 60) && (_hunger < 70)) then {_colourHunger =  _colour60;};
		if((_hunger >= 50) && (_hunger < 60)) then {_colourHunger =  _colour50;};
		if((_hunger >= 40) && (_hunger < 50)) then {_colourHunger =  _colour40;};
		if((_hunger >= 30) && (_hunger < 40)) then {_colourHunger =  _colour30;};
		if((_hunger >= 20) && (_hunger < 30)) then {_colourHunger =  _colour20;};
		if((_hunger >= 10) && (_hunger < 20)) then {_colourHunger =  _colour10;};
		if((_hunger >= 1) && (_hunger < 10)) then {_colourHunger =  _colour0;};
		if(_hunger < 1) then{_colourHunger =  _colourDead;};
		
		
		//				Thirst
		_colourThirst = _colourDefault;		
		if(_thirst >= 100) then{_colourThirst = _colour100;};
		if((_thirst >= 90) && (_thirst < 100)) then {_colourThirst =  _colour90;};
		if((_thirst >= 80) && (_thirst < 90)) then {_colourThirst =  _colour80;};
		if((_thirst >= 70) && (_thirst < 80)) then {_colourThirst =  _colour70;};
		if((_thirst >= 60) && (_thirst < 70)) then {_colourThirst =  _colour60;};
		if((_thirst >= 50) && (_thirst < 60)) then {_colourThirst =  _colour50;};
		if((_thirst >= 40) && (_thirst < 50)) then {_colourThirst =  _colour40;};
		if((_thirst >= 30) && (_thirst < 40)) then {_colourThirst =  _colour30;};
		if((_thirst >= 20) && (_thirst < 30)) then {_colourThirst =  _colour20;};
		if((_thirst >= 10) && (_thirst < 20)) then {_colourThirst =  _colour10;};
		if((_thirst >= 1) && (_thirst < 10)) then {_colourThirst =  _colour0;};
		if(_thirst < 1) then{_colourThirst =  _colourDead;};
		
		
		//				Energy
		
		_colourEnergy = _colourDefault;
		if(_energyPercent >= 100) then{_colourEnergy = _colour100;};
		if((_energyPercent >= 90) && (_energyPercent < 100)) then {_colourEnergy =  _colour90;};
		if((_energyPercent >= 80) && (_energyPercent < 90)) then {_colourEnergy =  _colour80;};
		if((_energyPercent >= 70) && (_energyPercent < 80)) then {_colourEnergy =  _colour70;};
		if((_energyPercent >= 60) && (_energyPercent < 70)) then {_colourEnergy =  _colour60;};
		if((_energyPercent >= 50) && (_energyPercent < 60)) then {_colourEnergy =  _colour50;};
		if((_energyPercent >= 40) && (_energyPercent < 50)) then {_colourEnergy =  _colour40;};
		if((_energyPercent >= 30) && (_energyPercent < 40)) then {_colourEnergy =  _colour30;};
		if((_energyPercent >= 20) && (_energyPercent < 30)) then {_colourEnergy =  _colour20;};
		if((_energyPercent >= 10) && (_energyPercent < 20)) then {_colourEnergy =  _colour10;};
		if((_energyPercent >= 1) && (_energyPercent < 10)) then {_colourEnergy =  _colour0;};
		if(_energyPercent < 1) then{_colourEnergy =  _colour0;};
		
		//				Stamina
		
		_colourStamina = _colourDefault;
		
		//display the information 
		((uiNamespace getVariable "osefStatusBarAdmin")displayCtrl 55554)ctrlSetStructuredText parseText 
			format["
			<t shadow='1' shadowColor='#000000' color='%10'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\players.paa' color='%10'/> %2</t>
			<t shadow='1' shadowColor='#000000' color='%11'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\damage.paa' color='%11'/> %3%1</t> 
			<t shadow='1' shadowColor='#000000' color='%10'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\krypto.paa' color='%10'/> %4</t> 
			<t shadow='1' shadowColor='#000000' color='%12'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\hunger.paa' color='%12'/> %5%1</t> 
			<t shadow='1' shadowColor='#000000' color='%13'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\thirst.paa' color='%13'/> %6%1</t> 
			<t shadow='1' shadowColor='#000000' color='%15'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\stamina.paa' color='%15'/>%9</t> 
			<t shadow='1' shadowColor='#000000' color='%14'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\energy.paa' color='%14'/>%8%1</t> 
			<t shadow='1' shadowColor='#000000' color='%10'>FPS: %7</t>
			<t shadow='1' shadowColor='#000000' color='%10'>POS: %16</t>
			<t shadow='1' shadowColor='#000000' color='%10'>DIR: %17</t>",
					"%", 
					count playableUnits,
					_damage,
					_wallet, 
					_hunger, 
					_thirst, 
					_serverFPS, 
					_energyPercent, 
					_stamina, 
					_colourDefault,
					_colourDamage,
					_colourHunger,
					_colourThirst,
					_colourEnergy,
					_colourStamina,
					_pos, 
					_dir
					 
				];
		
		}; 
};
} else {
_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];
systemChat format["Loading Player info...", _rscLayer];
[] spawn {

	sleep 5;
	//set the color values.
	//Additional color codes can be found here:  http://html-color-codes.com/
	_colourDefault = parseText "#adadad"; //set your default colour here
	_colour100 		= parseText "#336600";
	_colour90 		= parseText "#339900";
	_colour80 		= parseText "#33CC00";
	_colour70 		= parseText "#33FF00";
	_colour60 		= parseText "#66FF00";
	_colour50 		= parseText "#CCFF00";
	_colour40 		= parseText "#CCCC00";
	_colour30 		= parseText "#CC9900";
	_colour20 		= parseText "#CC6600";
	_colour10 		= parseText "#CC3300";
	_colour0 		= parseText "#CC0000";
	_colourDead 	= parseText "#000000";
	_uid = getPlayerUID player;
	
	
	while {true} do {
		sleep 1;
				
		//moved the creation of the status bar inside the loop and create it if it is null,
		//this is to handle instance where the status bar is disappearing 
		if(isNull ((uiNamespace getVariable "osefStatusBar")displayCtrl 55555)) then{
				diag_log "statusbar is null create";
				disableSerialization;
				_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
				_rscLayer cutRsc["osefStatusBar","PLAIN"];
		};		
		
		//initialize variables and set values
		_unit = _this select 0;
		_damage = round ((1 - (damage player)) * 100);
		//_damage = (round(_damage * 100));
		_hunger = round((EPOCH_playerHunger/5000) * 100);
		_thirst = round((EPOCH_playerThirst/2500) * 100);
		_wallet = EPOCH_playerCrypto;
		_stamina = round(EPOCH_playerStamina * 100) / 100;
		_energy = round(EPOCH_playerEnergy);
		_energyPercent =  floor((_energy / 2500 ) * 100);
		_fps = format["%1", diag_fps];
		_grid = mapGridPosition  player; _xx = (format[_grid]) select  [0,3]; 
		_yy = (format[_grid]) select  [3,3];  
		
						
		
		//Colour coding
		//			Damage
			
		_colourDamage = _colourDefault;
		if(_damage >= 100) then{_colourDamage = _colour100;};
		if((_damage >= 90) && (_damage < 100)) then {_colourDamage =  _colour90;};
		if((_damage >= 80) && (_damage < 90)) then {_colourDamage =  _colour80;};
		if((_damage >= 70) && (_damage < 80)) then {_colourDamage =  _colour70;};
		if((_damage >= 60) && (_damage < 70)) then {_colourDamage =  _colour60;};
		if((_damage >= 50) && (_damage < 60)) then {_colourDamage =  _colour50;};
		if((_damage >= 40) && (_damage < 50)) then {_colourDamage =  _colour40;};
		if((_damage >= 30) && (_damage < 40)) then {_colourDamage =  _colour30;};
		if((_damage >= 20) && (_damage < 30)) then {_colourDamage =  _colour20;};
		if((_damage >= 10) && (_damage < 20)) then {_colourDamage =  _colour10;};
		if((_damage >= 1) && (_damage < 10)) then {_colourDamage =  _colour0;};
		if(_damage < 1) then{_colourDamage =  _colourDead;};
		
		
		
		//				Hunger
		_colourHunger = _colourDefault;
		if(_hunger >= 100) then{_colourHunger = _colour100;};
		if((_hunger >= 90) && (_hunger < 100)) then {_colourHunger =  _colour90;};
		if((_hunger >= 80) && (_hunger < 90)) then {_colourHunger =  _colour80;};
		if((_hunger >= 70) && (_hunger < 80)) then {_colourHunger =  _colour70;};
		if((_hunger >= 60) && (_hunger < 70)) then {_colourHunger =  _colour60;};
		if((_hunger >= 50) && (_hunger < 60)) then {_colourHunger =  _colour50;};
		if((_hunger >= 40) && (_hunger < 50)) then {_colourHunger =  _colour40;};
		if((_hunger >= 30) && (_hunger < 40)) then {_colourHunger =  _colour30;};
		if((_hunger >= 20) && (_hunger < 30)) then {_colourHunger =  _colour20;};
		if((_hunger >= 10) && (_hunger < 20)) then {_colourHunger =  _colour10;};
		if((_hunger >= 1) && (_hunger < 10)) then {_colourHunger =  _colour0;};
		if(_hunger < 1) then{_colourHunger =  _colourDead;};
		
		
		//				Thirst
		_colourThirst = _colourDefault;		
		if(_thirst >= 100) then{_colourThirst = _colour100;};
		if((_thirst >= 90) && (_thirst < 100)) then {_colourThirst =  _colour90;};
		if((_thirst >= 80) && (_thirst < 90)) then {_colourThirst =  _colour80;};
		if((_thirst >= 70) && (_thirst < 80)) then {_colourThirst =  _colour70;};
		if((_thirst >= 60) && (_thirst < 70)) then {_colourThirst =  _colour60;};
		if((_thirst >= 50) && (_thirst < 60)) then {_colourThirst =  _colour50;};
		if((_thirst >= 40) && (_thirst < 50)) then {_colourThirst =  _colour40;};
		if((_thirst >= 30) && (_thirst < 40)) then {_colourThirst =  _colour30;};
		if((_thirst >= 20) && (_thirst < 30)) then {_colourThirst =  _colour20;};
		if((_thirst >= 10) && (_thirst < 20)) then {_colourThirst =  _colour10;};
		if((_thirst >= 1) && (_thirst < 10)) then {_colourThirst =  _colour0;};
		if(_thirst < 1) then{_colourThirst =  _colourDead;};
		
		
		//				Energy
		
		_colourEnergy = _colourDefault;
		if(_energyPercent >= 100) then{_colourEnergy = _colour100;};
		if((_energyPercent >= 90) && (_energyPercent < 100)) then {_colourEnergy =  _colour90;};
		if((_energyPercent >= 80) && (_energyPercent < 90)) then {_colourEnergy =  _colour80;};
		if((_energyPercent >= 70) && (_energyPercent < 80)) then {_colourEnergy =  _colour70;};
		if((_energyPercent >= 60) && (_energyPercent < 70)) then {_colourEnergy =  _colour60;};
		if((_energyPercent >= 50) && (_energyPercent < 60)) then {_colourEnergy =  _colour50;};
		if((_energyPercent >= 40) && (_energyPercent < 50)) then {_colourEnergy =  _colour40;};
		if((_energyPercent >= 30) && (_energyPercent < 40)) then {_colourEnergy =  _colour30;};
		if((_energyPercent >= 20) && (_energyPercent < 30)) then {_colourEnergy =  _colour20;};
		if((_energyPercent >= 10) && (_energyPercent < 20)) then {_colourEnergy =  _colour10;};
		if((_energyPercent >= 1) && (_energyPercent < 10)) then {_colourEnergy =  _colour0;};
		if(_energyPercent < 1) then{_colourEnergy =  _colour0;};
		
		//				Stamina
		
		_colourStamina = _colourDefault;
		
		//display the information 
		((uiNamespace getVariable "osefStatusBar")displayCtrl 55555)ctrlSetStructuredText parseText 
			format["
			<t shadow='1' shadowColor='#000000' color='%10'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\players.paa' color='%10'/> %2</t>
			<t shadow='1' shadowColor='#000000' color='%11'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\damage.paa' color='%11'/> %3%1</t> 
			<t shadow='1' shadowColor='#000000' color='%10'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\krypto.paa' color='%10'/> %4</t> 
			<t shadow='1' shadowColor='#000000' color='%12'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\hunger.paa' color='%12'/> %5%1</t> 
			<t shadow='1' shadowColor='#000000' color='%13'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\thirst.paa' color='%13'/> %6%1</t> 
			<t shadow='1' shadowColor='#000000' color='%15'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\stamina.paa' color='%16'/>%9</t>
			<t shadow='1' shadowColor='#000000' color='%14'><img size='1.6'  shadowColor='#000000' image='addons\status_bar\images\energy.paa' color='%14'/>%8%1</t> 
			<t shadow='1' shadowColor='#000000' color='%10'>FPS: %7</t>
			<t shadow='1' shadowColor='#000000' color='%10'>GRIDREF: %16</t>",
					"%", 
					count playableUnits,
					_damage,
					_wallet, 
					_hunger, 
					_thirst, 
					round diag_fps, 
					_energyPercent, 
					_stamina,
					_colourDefault,
					_colourDamage,
					_colourHunger,
					_colourThirst,
					_colourEnergy,
					_colourStamina,
					format["%1/%2",_xx,_yy]
				];
		
		
				
			
	}; 
};
};
