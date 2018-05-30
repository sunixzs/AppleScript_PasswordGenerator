
-- function to generate random chars
to getChars()
	-- chars to build the password from
	set chars to "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789"
	set str to ""
	repeat 3 times
		set str to str & some item of chars
	end repeat
	return str
end getChars

-- the password string
set passwordStr to getChars() & "-" & getChars() & "-" & getChars() & "-" & getChars()

-- get current time
set timeStr to (time string of (current date))

-- inform the user
repeat
	set infoWindow to display dialog "Neues Passwort: " & passwordStr & "
Uhrzeit: " & timeStr buttons {"Ok", "In die Zwischenablage kopieren"}
	
	set answer to button returned of infoWindow
	
	if answer is equal to "Ok" then
		exit repeat
	else if answer is equal to "In die Zwischenablage kopieren" then
		-- copy password to clipboard
		set the clipboard to passwordStr
	end if
end repeat
