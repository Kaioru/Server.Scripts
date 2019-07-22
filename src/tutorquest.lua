mapFields = require "libs/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("KoCTut"))

if target.field == mapFields.getID("ForestOfBeginning2") then
	if quest.state == mapQuests.getState("Perform") then
		target.field = mapFields.getID("ForestOfBeginning3")
	else
		-- pi.message("Please click on the NPC first to receive a quest")
	end
elseif target.field == mapFields.getID("ForestOfBeginning3") then
	target.field = mapFields.getID("ForestOfBeginning4")
elseif target.field == mapFields.getID("ForestOfBeginning4") then
	target.field = mapFields.getID("ForestOfBeginning5")
elseif target.field == mapFields.getID("ForestOfBeginning5") then
	target.field = mapFields.getID("APathOutForestBeginning")
end