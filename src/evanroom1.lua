mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_ex_key("mo70") == "" then
    quest.update_ex("mo70", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evan0"))
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon70"))
end