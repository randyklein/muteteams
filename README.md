# Mute Teams Shortcut
This autohotkey script allows you to create a shortcut on your keybord to toggle mute, and toggle the camera in Microsoft Teams in Windows.  The script has been built and tested on Windows 10 & 11.  The script works with the latest version of Microsoft Teams.  

## Installing
Note: there are many different ways to isntall and configure autohotkey.  This is just one method.  This script can be installed or configured to work in other ways

* Install AutoHotKey v2
* Press `Win key + R` and run the following command `shell:startup`
* Save TeamsMute-ahkv2.ahk to the startup folder.
* Click TeamsMute-ahkv2.ahk to run for the first time.

## Usage
* Modify the top two lines to change shorcut key assignments.  See documentation at: https://www.autohotkey.com/docs/v1/lib/Send.htm
* In Teams, there is no easy way to differentiate between the main window and the meeting windows.  In the latest version, the shortcut only works in the meeting window so the script cycles through all windows and sends the shortcut.  In past versions of teams, the shortcut worked in all windows.  To use in past versions of teams, you will need to uncomment the break so that the shortcut is only sent once.  
