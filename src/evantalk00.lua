mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("EvanTut"))

if quest.record_ex_key("mo00") == "" then
    quest.update_ex("mo00", "o")
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evanBalloon00"))
end