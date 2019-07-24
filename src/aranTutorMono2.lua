mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("mo3") == "" then
	quest.update("mo3", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon3"))
end