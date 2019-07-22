charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("MasterAdventurer"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdministrator"))

if charJob.checkIfJobBelongsToExplorers() and target.level > charConstants.getLvlCheckValue("fourthJobAdv") then
	charInventory.awardMasterAdventurerMedal()
	quest.complete()
	mapleAdmin.say("You have earned the <Master Adventurer> title. You can receive a Medal from NPC Dalair.")
	mapleAdmin.say("Congratulations on earning your honorable #b<Master Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end