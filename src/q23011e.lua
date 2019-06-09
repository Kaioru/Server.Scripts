-- TODO: missing lines, second job, third job
charInventory = require "lib/charInventory"
quest = target.get_quest(23011)

if self.ask_yes_no("So you've finally decided to become a Battle Mage, eh? Well, you can still change your mind. Just stop our conversation, forfeit this quest, and talk to another class trainer. So, you sure you want to become a Battle Mage? I'm not interested in teaching you unless you're a hundred percent sure...") then
	quest.complete()
	
	target.set_extend_sp(1, (target.level - 10) * 3 + 5)
	target.job = 3200
	target.max_hp = target.max_hp + 150 + math.random(25)
    target.hp = target.max_hp
    target.max_mp = target.max_mp + 100 + math.random(50)
    target.mp = target.max_mp
	target.str = 4
	target.dex = 4
	target.int = 20
	target.luk = 4
	target.ap = (target.level - 1) * 5 - 12
	charInventory.giveBattleMage1stJobItems()

	self.say("Okay, okay. Welcome to the Resistance, kid. From now on, you will play the role of a Battle Mage, a fierce Magician always ready to lead your party into battle.")
	self.say("But don't go spreading it around that you're a Battle Mage, hm? No need to tempt the Black Wings to come after you. From now on, I'll be your teacher. If anyone asks, you're visiting me just as a regular student, not as a member of the Resistance. I'll give you special lessons now and then. You better not fall asleep in class, hear?")
else
  speaker.say("TODO...")
end