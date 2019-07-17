mapFields = require("lib/mapFields")

self.say("Magicians are armed with flashy element-based spells and secondary magic that aids party as a whole. After the 2nd job adv., the elemental-based magic will provide ample amount of damage to enemies of opposite element.")
self.sayNext("If you wish to experience what it's like to be a Magician, come see me again.")

if self.ask_yes_no("Would you like to experience what it's like to be a Magician?") then
	target.direction_mode = true
	target.transfer_field(mapFields.getID("ShowMagician"), 0)
end