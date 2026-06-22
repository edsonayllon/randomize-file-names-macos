set theFolder to choose folder with prompt "Choose the folder with files to restore:"

tell application "Finder"
	set theFiles to every file of theFolder
	repeat with aFile in theFiles
		set currentName to name of aFile
		if isRandomized(currentName) then
			set name of aFile to (text 9 thru -1 of currentName)
		end if
	end repeat
end tell

display dialog "Done restoring." buttons {"OK"} default button "OK"

on isRandomized(fName)
	if (count of characters of fName) < 9 then return false
	if (text 7 thru 8 of fName) is not "__" then return false
	repeat with i from 1 to 6
		if (character i of fName) is not in "0123456789" then return false
	end repeat
	return true
end isRandomized