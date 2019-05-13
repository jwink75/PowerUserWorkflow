on chooseMenuItem(theAppName, theMenuName, theMenuItemName)
	try
		tell application theAppName
			activate
		end tell
		tell application "System Events"
			tell process theAppName
				tell menu bar 1
					tell menu bar item theMenuName
						tell menu theMenuName
							click menu item theMenuItemName
						end tell
					end tell
				end tell
            delay .2
            click button "None" of window "Edit Filter"
            click checkbox "Articulations" of window "Edit Filter"
            click checkbox "Lyrics" of window "Edit Filter"
            click checkbox "Notehead, Accidental and\rTablature String Alterations" of window "Edit Filter"
            delay .1
            click button "OK" of window "Edit Filter"
			end tell
		end tell
		return true
	on error
		set theAlertText to "An error has occurred."
        set theAlertMessage to "This item may not be selectable. Please try again.\n\nIf you continue experiencing issues,\nplease reach out to CJGarciaMusic@gmail.com"
        display alert theAlertText message theAlertMessage as critical
		return false
	end try
end chooseMenuItem

chooseMenuItem("Finale", "Edit", "Edit Filter�")