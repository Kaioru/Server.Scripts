--TODO: who actually says this?
charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
quest = target.get_quest(29907)
speaker = self.as_speaker(2007)

if charJob.checkIfJobBelongsToKoc() and target.level > 69 then
	charInventory.awardAdvancedKnightMedal()
	quest.complete()
	speaker.say("You have earned the <Advanced Knight> title. You can receive a Medal from NPC Dalair.")
	speaker.say("Congratulations on earning your honorable #b<Advanced Knight>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end