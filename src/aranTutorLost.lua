mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("fin") == "" then
    quest.update_ex("fin", "o")
	target.reserved_effect(mapEffects.getReservedEffect("child"))
	target.reserved_effect(mapEffects.getReservedEffect("clickChild"))
end