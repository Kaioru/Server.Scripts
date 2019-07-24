charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("SpecialTrainingMaster"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdmin"))

if charJob.checkIfJobBelongsToResistance() and target.level > charConstants.getLvlCheckValue("fifthJob") then
	charInventory.awardSpecialTrainingMasterMedal()
	quest.complete()
	mapleAdmin.say("You have earned the <Special Training Master> title. You can receive a Medal from NPC Dalair.")
	mapleAdmin.say("Congratulations on earning your honorable #b<Special Training Master>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end