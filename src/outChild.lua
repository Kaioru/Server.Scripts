mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("MissingChild2"))

if quest.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("BurningForest3second"), 2)
else
	target.transfer_field(mapFields.getID("BurningForest3"), 2)
end