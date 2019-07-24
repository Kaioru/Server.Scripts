-- TODO: Only execute once
mapQuests = require("lib/mapQuests")
mapEffects = require("lib/mapEffects")

quest1 = target.get_quest(mapQuests.getID("Reactor1"))
quest2 = target.get_quest(mapQuests.getID("Reactor2"))

if quest1.state == mapQuests.getState("Complete") then
    target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("infoReactor1"))
end

if quest2.state == mapQuests.getState("Complete") then
    target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("infoReactor2"))
end