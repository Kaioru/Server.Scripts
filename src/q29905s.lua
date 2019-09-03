-- Todo needs check
charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charConstants = require "lib/charConstants"

cygnus = self.as_speaker(npcSpeakers.getID("Cygnus"))
quest = target.get_quest(mapQuests.getID("Noblesse"))  -- 4th Quest - 20015 Greetings from the Young Empress and Chain...

if charJob.belongsTo("knightsOfCygnus") and target.level >= charConstants.getLvlCheckValue("noblesseMedal") then
	charInventory.awardNoblesseMedal()
	quest.complete()
	cygnus.say("You have earned the <Noblesse> title. You can receive a Medal from NPC Dalair.")
	cygnus.say("Congratulations on earning your honorable #b<Noblesse>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142065:##t1142065#  1 ")
end