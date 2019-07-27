mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest1 = target.get_quest(mapQuests.getID("MaiFirstTrainnig"))
quest2 = target.get_quest(mapQuests.getID("MaiSecondTrainnig"))
quest3 = target.get_quest(mapQuests.getID("MaiThirdTrainnig"))
quest4 = target.get_quest(mapQuests.getID("MaiFinalTrainnig"))
mai = self.as_speaker(npcSpeakers.getID("Mai"))

if quest1.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter1"), 4)
elseif quest2.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter2"), 4)
elseif quest3.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter3"), 4)
elseif quest4.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter4"), 4)
else
	mai.say("Only the adventurers that have been trained by Mai may enter.")
end