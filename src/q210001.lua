mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"
charInventory = require "lib/charInventory"

quest = target.get_quest(mapQuests.getID("MissingChild2"))		
athena = self.as_speaker(npcSpeakers.getID("AthenaPierceAranTut"))

if self.ask_yes_no("*Sniff sniff* I was so scared... Please take me to Athena Pierce.") then	
	charInventory.giveLostChild()
	quest.accept()
	target.transfer_field(mapFields.getID("DeadEndForest"), 0)
else
	self.say("*Sob* Aran has declined my request!")
end

if athena.ask_yes_no("You made it back safely! What about the child?! Did you bring the child with you?!") then
	athena.say("Oh, what a relief. I'm so glad...")
	target.say("Hurry and board the ship! We don't have much time!")
	athena.say("We don't have any time to waste. The Black Mage's forces are getting closer and closer! We're doomed if we don't leave right right this moment!")
	target.say("Leave, now!")
	athena.say("Aran, please! I know you want to stay and fight the Black Mage, but it's too late! Leave it to the others and come to Victoria Island with us!")
	target.say("No, I can't!")
	target.say("Athena Pierce, why don't you leave for Victoria Island first? I promise I'll come for you later. I'll be alright. I must fight the Black Mage with the other heroes!")

	 charInventory.removeLostChild()
	-- qm.removeEquipFromSlot(-11);
	quest.complete()
	target.transfer_field(mapFields.getID("AranScene"), 0)
else
    athena.say("What about the child? Please give me the child!")
end