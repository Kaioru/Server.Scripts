mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("HideAndSeek"))

if quest.record_key("exp3") == "1" then
	self.say("Hehehe...") 
else
	self.say("Aw shucks. You found me. Wow, you're really good at this game!\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 3 exp")
	target.exp = target.exp + mapQuests.getQuestExpReward("KidFound3")
	quest.update("exp3", "1")
end