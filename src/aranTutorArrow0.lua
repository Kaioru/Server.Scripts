mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("arr0") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow3"))
    quest.update_ex("arr0", "o")
end