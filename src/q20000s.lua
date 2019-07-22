charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("GreetingsFromYoungEmpress"))
cygnus = self.as_speaker(npcSpeakers.getID("Cygnus"))

if target.level > 6 then
	charInventory.awardNoblesseMedal()
	target.exp = target.exp + mapQuests.getQuestExpReward("GreetingsFromYoungEmpressFinish")
	quest.complete()
	cygnus.say("Ah, you've come... this is exhilarating. I am grateful for your decision to become a Cygnus Knight. I have been waiting a long time for someone like you. Someone that is courageous enough to face the Black Mage and not flinch...")
	cygnus.say("The battle against the evil nature of the Black Mage who wants to swallow up Maple World as a whole, the cunning nature of his disciples, and the physical battle against the crazy monsters will await you. There will also come a time where even you may turn against yourself into an enemy and torment you ...")
	cygnus.say("But I won't worry about that. I am confident that you will be able to fight through all that and protect Maple World from the Black Mage. Of course, you'll have to become a bit stronger than you are right now, right?")
end