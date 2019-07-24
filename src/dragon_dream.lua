mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("DragonEyes"))
dragon = self.as_speaker(npcSpeakers.getID("Dragon"))

if quest.state == mapQuests.getState("Perform") then
    dragon.say("You, who are destined to be a Dragon Master...\r\nYou have finally arrived.") 
    dragon.say("Go and fulfill your duties as the Dragon Master...")
	target.field = mapFields.getID("Tutorial1")	
end