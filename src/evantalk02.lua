mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo01") == "o" then
    quest.update("mo02", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon02"))
end