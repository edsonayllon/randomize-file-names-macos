set theFolder to choose folder with prompt "Choose the folder with files to randomize:"

tell application "Finder"
	set theFiles to every file of theFolder
	repeat with aFile in theFiles
		set currentName to name of aFile
		if not (my isRandomized(currentName)) then
			set randNum to (random number from 100000 to 999999) as text
			set name of aFile to randNum & "__" & currentName
		end if
	end repeat
end tell

display dialog "Done randomizing." buttons {"OK"} default button "OK"

on isRandomized(fName)
	if (count of characters of fName) < 8 then return false
	if (text 7 thru 8 of fName) is not "__" then return false
	repeat with i from 1 to 6
		if (character i of fName) is not in "0123456789" then return false
	end repeat
	return true
end isRandomized