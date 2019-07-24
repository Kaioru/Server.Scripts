mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("mo4") == "" then
	quest.update_ex("mo4", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("legendBalloon6"))
end