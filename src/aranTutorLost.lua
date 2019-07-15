mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("cmd") == "0" then
    quest.update("fin", "o")
	target.reserved_effect(mapEffects.getReservedEffect("child"))
	target.reserved_effect(mapEffects.getReservedEffect("clickChild"))
end