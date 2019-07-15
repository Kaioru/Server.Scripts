charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
mapFields = require "lib/mapFields"

if self.ask_yes_no("Take this ship and you'll head off to a bigger continent. For #e150 mesos#n I'll take you to #bVictoria Island#k. The thing is, once  you leave this place, you can't ever come back. What do you think? Do you want to go to Victoria Island?") then
	if target.level < charConstants.getLvlCheckValue("MapleToVictoriaLvlCheck") then 
		self.say("Let's see... I don't think you are strong enough. You'll have to be at least #bLevel 7#k to go to Victoria Island.")
	else
		if charInventory.hasRecommendationLetter() then
			self.say("Okay, now give me 150 mesos... Hey, what's that? Is that the recommendation letter from Lucas, the chief of Amherst? Hey, you should have told me you had this. I, Shanks, recognize greatness when I see one, and since you have been recommended by Lucas, I see that you have a great, great potential as an adventurer. No way would I charge you for this trip!")			
			self.say("Since you have the recommendation letter, I won't charge you for this. Alright, buckle up, because we're going to head to Victoria Island right now, and it might get a bit turbulent!!")
			charInventory.removeRecommendationLetter()
			target.field = mapFields.getID("IntroVictoria")
		else
			if target.money >= charConstants.getFeeValue("MapleToVictoriaFee") then
				 self.say("Bored of this place? Here... Give me 150 mesos first...")
				 self.say("Awesome! #e150 mesos#n accepted! Alright, off to Victoria Island!")
				 target.money = target.money - charConstants.getFeeValue("MapleToVictoriaFee")
				 target.field = mapFields.getID("IntroVictoria")
			else
				self.say("What? You're telling me you wanted to go without any money? You're one weirdo...")
			end
		end
	end
else
     self.say("Hmm... I guess you still have things to do here.")
end