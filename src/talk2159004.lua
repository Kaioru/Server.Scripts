quest = target.get_quest(23999)

if quest.record_key("exp2") == "1"  then
self.say("Did you find Jun and Von yet? Von is really, really good at hiding.") 
end

self.say("Did you find Jun and Von yet? Von is really, really good at hiding. \r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 5 exp")
target.exp = target.exp + 5
quest.update("exp2", "1") 