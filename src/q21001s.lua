mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"
charInventory = require "lib/charInventory"

quest = target.get_quest(mapQuests.getID("MissingChild2"))		

if self.ask_yes_no("*Sniff sniff* I was so scared... Please take me to Athena Pierce.") then	
	charInventory.giveLostChild()
	quest.accept()
	target.transfer_field(mapFields.getID("DeadEndForest"), 0)
else
	self.say("*Sob* Aran has declined my request!")
end