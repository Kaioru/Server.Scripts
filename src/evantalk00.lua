mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_key("mo00") == "" then
    quest.update("mo00", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon00"))
end