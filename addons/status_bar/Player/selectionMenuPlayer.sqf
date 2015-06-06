// Remove previous menu
player removeAction statusBarSelectionPlayer;

statusBarSelection00 = player addaction [("<t color=""#CC0000"">" + ("=== Please Select Your Interface Size ===") +""),"","",5,false,true,"",""];
statusBarSelection01 = player addaction [("<t color=""#FFCC99"">" + ("Very Small") +""),"addons\status_bar\player\playerBar_vs.sqf","",5,false,true,"",""];	
statusBarSelection02 = player addaction [("<t color=""#0000FF"">" + ("Small") +""),"addons\status_bar\player\playerBar_s.sqf","",5,false,true,"",""];	
statusBarSelection03 = player addaction [("<t color=""#33CC33"">" + ("Normal") +""),"addons\status_bar\player\playerBar_n.sqf","",5,false,true,"",""];	
statusBarSelection04 = player addaction [("<t color=""#CC00CC"">" + ("Large") +""),"addons\status_bar\player\playerBar_l.sqf","",5,false,true,"",""];	
statusBarSelection05 = player addaction [("<t color=""#FF6600"">" + ("Very Large") +""),"addons\status_bar\player\playerBar_vl.sqf","",5,false,true,"",""];
statusBarSelection06 = player addaction [("" + ("Exit Selection") +""),"addons\status_bar\clearStatusBarSelection.sqf","",5,false,true,"",""];	

