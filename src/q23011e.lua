-- TODO: missing lines, second job, third job
charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
charJob = require "lib/charJob"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("Resistance1stJob"))

if self.ask_yes_no("So you've finally decided to become a Battle Mage, eh? Well, you can still change your mind. Just stop our conversation, forfeit this quest, and talk to another class trainer. So, you sure you want to become a Battle Mage? I'm not interested in teaching you unless you're a hundred percent sure...") then
	quest.complete()

	charJob.setAdvStats("battleMage1")
	charInventory.giveBattleMage1stJobItems()
	charInventory.increaseEQPslots(4)
	charInventory.increaseUSEslots(4)
	charInventory.increaseETCslots(4)

	self.say("Okay, okay. Welcome to the Resistance, kid. From now on, you will play the role of a Battle Mage, a fierce Magician always ready to lead your party into battle.")
	self.say("But don't go spreading it around that you're a Battle Mage, hm? No need to tempt the Black Wings to come after you. From now on, I'll be your teacher. If anyone asks, you're visiting me just as a regular student, not as a member of the Resistance. I'll give you special lessons now and then. You better not fall asleep in class, hear?")
else
  self.say("TODO...")
end