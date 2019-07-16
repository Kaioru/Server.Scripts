mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("dt00") == "" then
    quest.update("dt00", "o")
	target.screen_field_effect(mapEffects.getScreenFieldEffect("dragonTalk00"))
end