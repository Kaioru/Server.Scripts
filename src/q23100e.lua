mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"
npcSpeakers = require "lib/npcSpeakers"

quest1 = target.get_quest(mapQuests.getID("AgilityTraining"))
quest2 = target.get_quest(mapQuests.getID("AttackTraining"))
quest3 = target.get_quest(mapQuests.getID("EnduranceTraining"))
quest4 = target.get_quest(mapQuests.getID("FinalTrainingCourse"))

--elex = self.as_speaker(npcSpeakers.getID("Elex"))
--elex.say("TODO: what do i say actually?")

if quest1.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("TrainingRoomA"), 4)
else if quest2.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("TrainingRoomB"), 4)
else if quest3.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("TrainingRoomC"), 4)
else if quest4.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("TrainingRoomD"), 4)
else if quest4.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("TrainingRoomE"), 4)
end