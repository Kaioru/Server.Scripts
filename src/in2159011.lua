npcSpeakers = require("lib/npcSpeakers")
mapFields = require("lib/mapFields")
mapQuests = require("lib/mapQuests")

speaker = self.as_speaker(npcSpeakers.getID("SuspiciousHollow"))

if speaker.ask_yes_no("#b(What a suspicious hole. Maybe Von is hiding inside. Peek inside?)#k") then
  target.exp = target.exp + mapQuests.getID("VitaEscapeBegin")
  target.field = mapFields.getID("SuspiciousLaboratory1")
else
  speaker.say("Even Von wouldn't hide here, right?")
end