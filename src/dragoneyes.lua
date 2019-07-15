mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("DragonEyes"))

if quest.state == mapQuests.getState("None") then
    quest.accept()
end