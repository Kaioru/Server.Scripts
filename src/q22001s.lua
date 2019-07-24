mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"
charInventory = require "lib/charInventory"

quest = target.get_quest(mapQuests.getID("FeedingBullDog"))	
utah = self.as_speaker(npcSpeakers.getID("Utah"))

self.say({
	utah.get_speech("Haha. I had a good laugh. Hahaha. But enough with that nonsense. Feed #p1013102#, would you?"),
	target.get_speech("#bWhat? That's #p1013101#'s job!"),
})

if utah.ask_yes_no("You little brat! I told you to call me Older Brother! You know how much #p1013102# hates me. He'll bite me if I go near him. You feed him. He likes you.") then	
	charInventory.giveDogFood()
	quest.accept()
	utah.say("Hurry up and head #bleft#k to feed #b#p1013102##k. He's been barking to be fed all morning.")
else
	utah.say("Stop being lazy. Do you want to see your brother bitten by a dog? Hurry up! Talk to me again and accept the quest!")
end	
	
utah.say("Feed #p1013102# and come back to see me.")