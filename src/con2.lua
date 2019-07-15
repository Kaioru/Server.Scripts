mapFields = require "lib/mapFields"

if self.ask_yes_no("Here you are, right in front of the hideout! What? You want to return to Showa Town?") then
	target.field = mapFields.getID("ShowaTown")	
else
    self.say("If you want to return to Showa Town, then talk to me.")
end