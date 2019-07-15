mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo00") == "o" then
    quest.update("mo01", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon01"))
end