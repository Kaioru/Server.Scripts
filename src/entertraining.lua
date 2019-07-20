mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest1 = target.get_quest(mapQuests.getID("MaiFirstTrainnig"))
quest2 = target.get_quest(mapQuests.getID("MaiSecondTrainnig"))
quest3 = target.get_quest(mapQuests.getID("MaiThirdTrainnig"))
quest4 = target.get_quest(mapQuests.getID("MaiFinalTrainnig"))
speaker = self.as_speaker(0x1)

if quest1.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter1"), 4)
else if quest2.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter2"), 4)
else if quest3.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter3"), 4)
else if quest4.state == mapQuests.getState("Perform") then
	target.transfer_field(mapFields.getID("AdventurerTrainingCenter4"), 4)
else
speaker.say("Only the adventurers that have been trained by Mai may enter.")