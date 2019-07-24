mapFields = require("lib/mapFields")

self.say("Pirates are blessed with outstanding dexterity and power, utilizing their guns for long-range attacks while using their power on melee combat situations. Gunslingers use elemental-based bullets for added damage, while Infighters transform to a different being for maximum effect.")
self.say("If you wish to experience what it's like to be a Pirate, come see me again.")

if self.ask_yes_no("Would you like to experience what it's like to be a Pirate?") then
	target.direction_mode = true
	target.transfer_field(mapFields.getID("ShowPirate"), 0)
end