mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"

quest = target.get_quest(mapQuests.getID("MissingChild"))		
		
if self.ask_yes_no("Oh, no! I think there's still a child in the forest! Aran, I'm very sorry, but could you rescue the child? I know you're injured, but I don't have anyone else to ask!") then
	quest.accept()

    self.say("#bThe child is probably lost deep inside the forest!#k We have to escape before the Black Mage finds us. You must rush into the forest and bring the child back with you!")
	self.say("Don't panic, Aran. If you wish to check the status of the \r\nquest, press #bQ#k and view the Quest window.")
	self.say("Please, Aran! I'm begging you. I can't bear to lose another person to the Black Mage!")

	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("tutorialArrow1"))
else
	self.say("No, Aran... We can't leave a kid behind. I know it's a lot to ask, but please reconsider. Please!")
end