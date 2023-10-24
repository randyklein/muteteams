# Mute Teams Shortcut
This autohotkey script allows you to create a shortcut on your keybord to toggle mute, and toggle the camera in Microsoft Teams in Windows.  The script has been built and tested on Windows 10 & 11.  The script works with the latest version of Microsoft Teams.  

## Installing
There are many different ways to isntall and configure autohotkey.  This is just one method.  This script can be installed or configured to work in other ways

* Install AutoHotKey v2 from https://www.autohotkey.com/download/
* Press `Win key + R` and run the following command `shell:startup`
* Save TeamsMute-ahkv2.ahk to the startup folder.
* Click TeamsMute-ahkv2.ahk to run for the first time.

Note: There is a zip version of AutoHotKey that can be used without installing.  I'm assuming this would work, but I have not tested it myself.  A guide can be found at: https://www.thenickmay.com/how-to-install-autohotkey-even-without-administrator-access/

## Usage
* Modify the top two lines to change shorcut key assignments to any key desired.  See documentation at: https://www.autohotkey.com/docs/v1/lib/Send.htm

## Notes
* In Teams, there is no easy way to differentiate between the main Teams window and the meeting windows.  In the latest version, the shortcut only works in the meeting window and does nothing in the main window so the script cycles through all windows and sends the shortcut.  When it sends in the main window, nothing happens.  In past versions of teams, the shortcut worked in all windows.  To use in past versions of teams, you will need to uncomment the break so that the shortcut is only sent once.  If this script is used in past versions without  making this change, the shortcut will run in each window and toggle then untoggle.  
