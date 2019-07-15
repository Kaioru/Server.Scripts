mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo21") == "" then
    quest.update("mo21", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon21"))
end