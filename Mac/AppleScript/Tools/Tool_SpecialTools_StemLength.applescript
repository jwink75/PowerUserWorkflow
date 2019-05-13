on subMenuItem(theAppName, theMenuName, theMenuItemName, theSubMenuItem)
	try
		tell application "System Events"
			tell process theAppName
				click menu item theSubMenuItem of menu of menu item theMenuItemName of menu theMenuName of menu bar 1
			end tell
		end tell
		return true
	on error
		set theAlertText to "A Stream Deck error has occurred."
        set theAlertMessage to "The " & theSubMenuItem & " tool wasn't able to be selected.\n\nPlease try again."
        display alert theAlertText message theAlertMessage as critical
		return false
	end try
end subMenuItem

subMenuItem("Finale", "Tools", "Special Tools", "Stem Length")