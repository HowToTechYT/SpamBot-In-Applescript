
display dialog "Which appication do you want to spam in" buttons {"More", "TextEdit"} default button 2 with title "Spam Bot"
set the button_pressed to the button returned of the result
if the button_pressed is "More" then
	display dialog "Please choose A custom application and click ok" with title "Spam Bot"
	
else if the button_pressed is "TextEdit" then
	tell application "TextEdit"
		activate
		make new document
	end tell
end if
tell application "System Events"
	display dialog "Enter message" default answer "example text" with title "Spam Bot"
	set textToSay to the text returned of the result
	
	display dialog "Interval " default answer ".1" with title "Spam Bot"
	set int to the text returned of the result
	set numoftimes to text returned of (display dialog "How many times?" default answer "100" with title "Spam Bot")
	display dialog "Click to launch in 5 Seconds" with title "Spam Bot"
	delay 5
	repeat numoftimes times
		delay int
		keystroke return
		keystroke textToSay
	end repeat
end tell

