--TODO: who actually says this?
charJob = require "lib/charJob"
charInventory = require "lib/charInventory"
quest = target.get_quest(29906)
speaker = self.as_speaker(2007)

if charJob.checkIfJobBelongsToKoc() and target.level > 29 then
	charInventory.awardOfficialKnightMedal()
	quest.complete()
	speaker.say("You have earned the <Official Knight> title. You can receive a Medal from NPC Dalair.")
	speaker.say("Congratulations on earning your honorable #b<Official Knight>#k title. I wish you the best of luck in your future endeavors! Keep up the good work. \r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0# \r\n\r\n#v1142108:##t1142108#  1 ")
	-- TODO: Q.ShowInfo('<Official Knight> has been rewarded.');
	-- TODO: Q.ShowInfoOnScreen('<Official Knight> has been rewarded.');
end