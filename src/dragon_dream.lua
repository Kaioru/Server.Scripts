mapFields = require "lib/mapFields"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("DragonEyes"))
speaker = self.as_speaker(0x1)

if quest.state == mapQuests.getState("Perform") then

    speaker.say({ 
        "You, who are destined to be a Dragon Master...\r\nYou have finally arrived.", 
        "Go and fulfill your duties as the Dragon Master..." 
    })

    quest.complete()
	target.field = mapFields.getID("Tutorial1")	
end