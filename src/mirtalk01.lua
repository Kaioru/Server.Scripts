mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_ex_key("dt01") == "" then
    quest.update_ex("dt01", "o")
	target.screen_field_effect(mapEffects.getScreenFieldEffect("dragonTalk01"))
end