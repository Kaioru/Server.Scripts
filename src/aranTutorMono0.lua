mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_key("mo1") == "" then
    quest.update("mo1", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon1"))
end