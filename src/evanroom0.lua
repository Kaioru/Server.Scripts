mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo30") == "" then
    quest.update("mo30", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon30"))
end