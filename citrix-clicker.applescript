say getTimeInHoursAndMinutes() using "Fiona"
delay 1

tell application "System Events"
	set InUseApp to name of first application process whose frontmost is true
	repeat with theProcess in (application processes where name is "Citrix Viewer")
		tell application "System Events" to tell process "Citrix Viewer"
			set frontmost to true
			delay 0.75
			tell application "System Events"
				keystroke "	" using {control down}
				delay 0.5
				keystroke "	" using {control down, shift down}
				delay 0.5
			end tell
		end tell
		exit repeat
	end repeat
	tell application "System Events" to tell process InUseApp
		set frontmost to true
	end tell
end tell

on getTimeInHoursAndMinutes()
	set timeStr to time string of (current date)
	set Pos to offset of ":" in timeStr
	set theHour to characters 1 thru (Pos - 1) of timeStr as string
	set timeStr to characters (Pos + 1) through end of timeStr as string
	set Pos to offset of ":" in timeStr
	set theMin to characters 1 thru (Pos - 1) of timeStr as string
	set timeStr to characters (Pos + 1) through end of timeStr as string
	return (theHour & ":" & theMin) as string
end getTimeInHoursAndMinutes
