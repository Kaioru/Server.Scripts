mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_ex_key("mo10") == "" then
    quest.update_ex("mo10", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon10"))
end