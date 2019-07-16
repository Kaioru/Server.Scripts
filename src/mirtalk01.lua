mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("dt01") == "" then
    quest.update("dt01", "o")
	target.screen_field_effect(mapEffects.getScreenFieldEffect("dragonTalk01"))
end