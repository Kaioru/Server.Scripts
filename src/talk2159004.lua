npcSpeakers = require "lib/npcSpeakers"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("HideAndSeek"))

if quest.record_key("exp2") == "1" then
	self.say("Did you find Jun and Von yet? Von is really, really good at hiding.") 
else
	self.say("Did you find Jun and Von yet? Von is really, really good at hiding. \r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 5 exp")
	target.exp = target.exp + mapQuests.getQuestExpReward("KidFound5")
	quest.update("exp2", "1") 
end