-- TODO: Only execute once
mapQuests = require("lib/mapQuests")
mapEffects = require("lib/mapEffects")

quest = target.get_quest(mapQuests.getID("Minimap"))

if quest.state == mapQuests.getState("Perform") then
    target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("infoMinimap"))
end