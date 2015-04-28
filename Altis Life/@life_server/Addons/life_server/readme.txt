/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ******************Copyright © 2014 infiSTAR all rights reserved****************** */
/* *********************************www.infiSTAR.de********************************* */
--------------------------------------------------------------------------------
As a friendly Reminder, you have accepted this by proceeding the payment during the purchase:
*REFUND POLICY*
You agree that infiSTAR offers no refunds and all payments for Services are final.
Furthermore, you shall not institute any form or charge-back for any fees paid to infiSTAR.
You acknowledge that you have read and agree to the above Policy.

*TERMS AND CONDITIONS*
The script (which is a plain written text) stays property of infiSTAR.
As author he is the only one allowed to modify, share (sell or post) it.
Commercial use is prohibited unless it is permitted by infiSTAR.
Copyright © 2014 infiSTAR all rights reserved
--------------------------------------------------------------------------------
CONTACT INFO
http://dayzantihack.com/form.html (infiSTAR23@gmail.com)
--------------------------------------------------------------------------------
pbo manager I use on windows 7 64bit:
http://files.dayzantihack.de/PBO Manager v.1.4 beta.zip


It is very important that you read through the "run.sqf".
Most people want to run this on AltisLife and forget to change the settings for AltisLife in the "run.sqf".


Installation-Guide:
===================

ArmA3 Epoch 0.2.0.1:
01. Disable default AntiHack (SkaroKid copy paste *1) by going into "\epochconfig\config.sqf"
     add this to the bottom:
     EPOCH_antihackEnabled = false;
     EPOCH_antihack_addOnCheck = false;
     [] execVM "run.sqf";
02. Take
     A3AH.sqf
     A3AT.sqf
     run.sqf
     A3_HACKLOG.dll
     from the .zip you have gotten from me (infiSTAR.de) and put them in the ArmA3 Folder (on the Server!).
03. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
04. Upload the BattleEye Filters from my folder into your instance folder - overwrite the existing but do not delete any file.
05. Upload it - Start the Server and press Your Open Menu Key :)! (Default F1)





ArmA3 Epoch 0.2:
01. Download your a3e_svr.pbo (Epoch\@EpochHive\Addons)
02. Make sure the folder you downloaded the pbo from (Epoch\@EpochHive\Addons), only has the a3e_svr.pbo in it.
     If that folder has a subfolder or the unpacked pbo in it -> DELETE that.
03. Once you are done with this, unpack your pbo file (google pbo manager or semilar)
04. go to (a3e_svr\init\) and open server_init.sqf (note - we are in the server pbo and not in the MPmission anymore..)
05. Search for
     call compile preprocessFileLineNumbers "\RANDOMSTRING\RANDOMSTRING\a3e_svr\compile\epoch_antihack\EPOCH_server_initAH.sqf";
     replace it with
     call compile preprocessFileLineNumbers "run.sqf";call compile preprocessFileLineNumbers "\RANDOMSTRING\RANDOMSTRING\a3e_svr\compile\epoch_antihack\EPOCH_server_initAH.sqf";
06. Disable Skaronater copy paste AntiHack by going into the .sqf file
     a3e_svr\compile\epoch_antihack\EPOCH_server_initAH.sqf
     change this _skn_enableAntihack=true;
     to
     _skn_enableAntihack=false;
07. Take
     A3AH.sqf
     A3AT.sqf
     run.sqf
     A3_HACKLOG.dll
     from the .zip you have gotten from me (infiSTAR.de) and put them in the ArmA3 Folder (on the Server!).
08. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
09. Upload the BattleEye Filters from my folder into your instance folder - overwrite the existing but do not delete any file.
10. Repack Pbo - Upload it - Start the Server and press Your Open Menu Key :)! (Default F1)





ArmA3 Epoch 0.1.0.3:
01. Download your a3_epoch_server.pbo (Epoch\@EpochHive\Addons)
02. Make sure the folder you downloaded the pbo from (Epoch\@EpochHive\Addons), only has the a3_epoch_server.pbo in it.
     If that folder has a subfolder or the unpacked pbo in it -> DELETE that.
03. Once you are done with this, unpack your pbo file (google pbo manager or semilar)
04. go to (a3_epoch_server\init\) and open server_init.sqf (note - we are in the server pbo and not in the MPmission anymore..)
05. copy paste
     [] execVM "run.sqf";
     in the first line.
06. Take
     A3AH.sqf
     A3AT.sqf
     run.sqf
     A3_HACKLOG.dll
     from the .zip you have gotten from me (infiSTAR.de) and put them in the ArmA3 Folder (on the Server!).
07. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
08. Upload the BattleEye Filters from my folder into your instance folder - overwrite the existing but do not delete any file.
09. Repack Pbo - Upload it - Start the Server and press Your Open Menu Key :)! (Default F1)





USING THIS ON ALTIS-LIFE WITH SPYGLASS:
01. First we need to modify spyglass, so we are not getting banned from our own server..
     Open the Altis-Life Mpmission folder and move to "SpyGlass\fn_menuCheck.sqf" and replace it from the one in the folder called "_AltisLife extras".
     Also replace the "initPlayerLocal.sqf" 
02. Make sure the folder you downloaded the pbo from "AltisLife\@life_server\Addons", only has the life_server.pbo in it.
     If that folder has a subfolder or the unpacked pbo in it -> DELETE that.
03. Once you are done with this, unpack your pbo file (google pbo manager or semilar)
04. go into "life_server" folder and open "init.sqf" (note - we are in the server pbo and not in the MPmission anymore..)
05. copy paste
     [] execVM "run.sqf";
     in the first line.
06. Take
     A3AH.sqf
     A3AT.sqf
     run.sqf
     A3_HACKLOG.dll
     from the .zip you have gotten (from me, infiSTAR.de) and put them in the ArmA3 Folder (on the Server!).
07. Open the "run.sqf" and add your AdminUID(s), then check if the different settings are fine for you :) - do not edit the other files.
08. Upload the BattleEye Filters from my folder "_AltisLife extras\BattlEye" into your instance folder - overwrite the existing, but do not delete any file.
09. Repack Pbo - Upload it - Start the Server and press Your Open Menu Key :)! (Default F1)





Good to know:
1. You can spectate by double clicking the name of a player in the admin menu.
2. Keybinds:
     F1 - Default AdminMenu Key
     F6 - Heal Yourself
     F7 - Heal & Repair withing 15m
     F10 - Stop Spectating
     F11 - Add Ammo for current weapon
     5 - Teleport in looking direction
     6 - Eject CursorTarget
     7 - Lock & Unlock closest vehicle you are aiming at.
     SHIFT & F2 - Adminconsole
     SHIFT & DELETE - Delete CursorTarget
     SHIFT & 4 - Fly Up
     SHIFT & TAB - Open Map
3. If the map is opened and you hold LEFT-ALT key, you can click on the map and teleport there!
4. If you are added in the run.sqf as an admin, you are able to change from admin to a normal player and back by typing !admin in the chat.




 *1 As some of you may already know, Skaronator is trying to discredit me wherever he can.
    I am not sure if that is just childish behavior or because of the fact that he knows that copy pasting is not the right way to get things done.
    He also has a past(?) as a "hacker" and the default antihack that is within the default arma3 epoch files has a backdoor in it that makes him, avwol and someone else admin on your server.
    Also it allows skaronator to open his custom files/hackmenu.
    Do not believe the rumor or lies spread by him and his friends..
    
    That is how his menu looks like now: http://puu.sh/cyYwV/fab3e36568.png
    not just my old color them, also the same text (admin functions) in the same order and with the same description.
    Even same capital letters that I used :P (totally not copy paste.. *irony*).. http://puu.sh/czcR0/9e7a55a2f4.png
	 
	 Epoch devs are trying to defame me and probably others to be able to copy paste their work and use it as theirs.
	 As we know they are taking part in the contest of "make arma not war" and there is much money in the pot..
	 more about this on http://infistar.de/epoch.html


cheers,
chris aka infiSTAR
/* *******************Developer : infiSTAR (infiSTAR23@gmail.com)******************* */
/* ******************Copyright © 2014 infiSTAR all rights reserved****************** */
/* *********************************www.infiSTAR.de********************************* */