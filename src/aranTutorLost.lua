mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("cmd") == "0" then
    quest.update("fin", "o")
	target.avatar_oriented_effect(mapEffects.getReservedEffect("child"))
	target.avatar_oriented_effect(mapEffects.getReservedEffect("clickChild"))
end