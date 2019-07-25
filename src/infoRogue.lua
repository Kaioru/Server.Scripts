mapFields = require("lib/mapFields")

self.say("Thieves are a perfect blend of luck, dexterity, and power that are adept at the surprise attacks against helpless enemies. A high level of avoidability and speed allows Thieves to attack enemies from various angles.")
self.say("If you wish to experience what it's like to be a Thief, come see me again.")

if self.ask_yes_no("Would you like to experience what it's like to be a Thief?") then
	target.direction_mode = true
	target.transfer_field(mapFields.getID("ShowRogue"), 0)
end