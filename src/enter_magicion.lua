-- TODO: needs player cnt check
mapFields = require "lib/mapFields"
npcSpeakers = require "lib/npcSpeakers"

powerbfore = self.as_speaker(npcSpeakers.getID("PowerBFore"))

rooms = {
    {"Room of Courage", mapFields.getID("MagicianTrainingCenter")},
    {"Room of Wisdom", mapFields.getID("MagicianTrainingCenter")},
    {"Room of Skill", mapFields.getID("MagicianTrainingCenter")},
    {"Room of Training", mapFields.getID("MagicianTrainingCenter")},
    {"Room of Power", mapFields.getID("MagicianTrainingCenter")},
}
selections = {}

text = "Listen up, explorers! \r\nThis training center is only open to Magician below Level 20. You can always train on your own, but it help to train with likeminded people together. Select the room you would like to train in.."

for k, v in pairs(rooms) do
    selections[k] = v[1] .. " (0/5)" 
end

selection = powerbfore.ask_menu(text, selections)
target.field = mapFields.getID("MagicianTrainingCenter")