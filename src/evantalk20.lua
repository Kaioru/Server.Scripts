mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo20") == "" then
    quest.update("mo20", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon20"))
end