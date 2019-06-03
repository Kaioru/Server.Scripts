quest = target.get_quest(23999)

if quest.record_key("exp4") == "1" then
	self.say("Hehehe...") 
else
	self.say("D'oh! You found me. But I'm tiny! Are you a professional at this game or something?\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 3 exp")
	target.exp = target.exp + 3
	quest.update("exp4", "1")
end