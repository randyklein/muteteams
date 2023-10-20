AppsKey::toggle_mute_teams()						;menu key - toggle mute
^AppsKey::toggle_camera_teams()						;menu key - toggle camera

toggle_mute_teams(){

	activeWin := WinGetTitle("A")					;Get the title of the active window to later reactivate
	
	winList := WinGetlist("ahk_exe Teams.exe",,,)

	for window in winList 							;Loop through IDs of all teams windows
	{
		if (WinGetTitle(window) != "Microsoft Teams Notification" and WinGetTitle(window) != "")	;make sure it isnt the notification	or screen sharing, which uses a null title
		{
			WinActivate(WinGetTitle(window))	;This should be either the main Teams window or the meeting window, activate it
			Send("^+M")							;send ctrl,shift,m shortcut
			sleep 20							;sometimes it activates the new window before the sendkeys finishes, delay fixes it
			break								;There are multiple teams windows, break the loop so that the mute commmand doesnt keep sending after the right window is found
	}}
	
	WinActivate (activeWin) 						;reactivate the originally active window
}

toggle_camera_teams(){

	activeWin := WinGetTitle("A")					;Get the title of the active window to later reactivate
	
	winList := WinGetlist("ahk_exe Teams.exe",,,)

	for window in winList 							;Loop through IDs of all teams windows
	{
		if (WinGetTitle(window) != "Microsoft Teams Notification" and WinGetTitle(window) != "")	;make sure it isnt the notification	or screen sharing, which uses a null title
		{
			WinActivate(WinGetTitle(window))	;This should be either the main Teams window or the meeting window, activate it
			Send("^+O")							;send ctrl,shift,m shortcut
			sleep 20							;sometimes it activates the new window before the sendkeys finishes, delay fixes it
			break								;There are multiple teams windows, break the loop so that the mute commmand doesnt keep sending after the right window is found
	}}
	
	WinActivate (activeWin) 						;reactivate the originally active window
}
