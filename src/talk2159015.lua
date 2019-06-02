-- TODO: QuestRecordsEX exp3=1"
quest = target.get_quest(23999)

if quest.state != -1 then 
self.say("Hehehe...") 
end

self.say("Aw shucks. You found me. Wow, you''re really good at this game!\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 3 exp")
target.EXP = target.EXP + 3
quest.update("exp3=1")