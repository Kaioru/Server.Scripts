mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("AranTut"))

if quest.record_ex_key("cmd") == "" then
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialGuide3"))
    -- TODO: target.message("You can use a Command Attack by pressing both the arrow key and the attack key after a Consecutive Attack.")
    quest.update_ex("cmd", "o")
end