mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo30") == "0" then
    quest.update("mo70", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evan0"))
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon70"))
end