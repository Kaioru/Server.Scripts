--TODO: who actually says this?
charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
quest = target.get_quest(29900)
speaker = self.as_speaker(2007)

if charJob.checkIfJobBelongsToExplorers() and target.level > 9 then
	charInventory.awardBeginnerAdventurerMedal()
	quest.complete()
	speaker.say("You have earned the <Beginner Adventurer> title. You can receive a Medal from NPC Dalair.")
	speaker.say("Congratulations on earning your honorable #b<Beginner Adventurer>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142107:##t1142107#  1")
	-- TODO: Q.ShowInfo('<Beginner Adventurer> has been rewarded.');
	-- TODO: Q.ShowInfoOnScreen('<Beginner Adventurer> has been rewarded.');
end