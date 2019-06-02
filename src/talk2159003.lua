-- TODO: QuestRecordsEX exp1=1""
quest = target.get_quest(23999)

if quest.state != -1 then 
self.say("Did you find Ulrika and Von yet? Von is really, really good at hiding.") 
end

self.say("Did you find Ulrika and Von yet? Von is really, really good at hiding. \r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 5 exp")
target.EXP = target.EXP + 5
quest.update("exp1=1")