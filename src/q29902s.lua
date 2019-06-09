--TODO: who actually says this?
charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
quest = target.get_quest(29902)
speaker = self.as_speaker(2007)

if charJob.checkIfJobBelongsToExplorers() and target.level > 69 then
	charInventory.awardVeteranAdventurerMedal()
	quest.complete()
	speaker.say("You have earned the <Veteran Adventurer> title. You can receive a Medal from NPC Dalair.")
	speaker.say("Congratulations on earning your honorable #b<Veteran Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
end