mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo10") == "" then
    quest.update("mo10", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon10"))
end