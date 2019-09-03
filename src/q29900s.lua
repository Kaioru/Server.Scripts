charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charConstants = require "lib/charConstants"

quest = target.get_quest(mapQuests.getID("BeginnerAdventurer"))
mapleAdmin = self.as_speaker(npcSpeakers.getID("MapleAdmin"))

if charJob.belongsTo("explorers") and target.level >= charConstants.getLvlCheckValue("firstJobAdvMagician") then
	charInventory.awardBeginnerAdventurerMedal()
	quest.complete()
	mapleAdmin.say("You have earned the <Beginner Adventurer> title. You can receive a Medal from NPC Dalair.")
	mapleAdmin.say("Congratulations on earning your honorable #b<Beginner Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142107:##t1142107#  1")
end