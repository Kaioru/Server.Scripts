charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charConstants = require "lib/charConstants"

quest = target.get_quest(mapQuests.getID("SpecialTrainingSuperior"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdmin"))

if charJob.belongsTo("resistance") and target.level >= charConstants.getLvlCheckValue("fourthJobAdv") then
	charInventory.awardSpecialTrainingSuperiorMedal()
	quest.complete()
	mapleAdmin.say("You have earned the <Special Training Superior> title. You can receive a Medal from NPC Dalair.")
	mapleAdmin.say("Congratulations on earning your honorable #b<Special Training Superior>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end