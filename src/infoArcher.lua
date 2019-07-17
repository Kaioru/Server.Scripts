mapFields = require("lib/mapFields")

self.say("Bowmen are blessed with dexterity and power, taking charge of long-distance attacks, providing support for those at the front line of the battle. Very adept at using landscape as part of the arsenal.")
self.sayNext("If you wish to experience what it's like to be a Bowman, come see me again.")

if self.ask_yes_no("Would you like to experience what it's like to be a Bowman?") then
	target.direction_mode = true
	target.transfer_field(mapFields.getID("ShowArcher"), 0)
end