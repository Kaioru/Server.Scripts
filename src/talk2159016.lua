-- TODO: QuestRecordsEX exp4=1"
quest = target.get_quest(23999)

if quest.state != -1 then 
self.say("Hehehe...") 
end

self.say("D'oh! You found me. But I''m tiny! Are you a professional at this game or something?\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 3 exp")
target.EXP = target.EXP + 3
quest.update("exp4=1")