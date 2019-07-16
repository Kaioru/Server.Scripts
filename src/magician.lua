-- TODO: second job, third job
charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
charJob = require "lib/charJob"

if charJob.jobIsBeginner() then
	self.say("Do you want to be a Magician? You need to meet some requirements in order to do so. You need to be at least at #bLevel 8#k. Let's see if you have what it takes to become a Magician...")
	if target.level >= charConstants.getLvlCheckValue("firstJobAdvMagician") then
		self.say("You definitely have the look of a Magician. You may not be there yet, but I can see the Magician in you...what do you think? Do you want to become the Magician?")
		self.say("Alright, you're a Magician from here on out, since I, Grendel the Really old, the head Magician, allow you so. It isn't much, but I'll give you a little bit of what I have...")

		charJob.setStatsMagician1stJob()
		charInventory.giveMagician1stJobItems()
		
		self.say("You have just equipped yourself with much more magicial power. Please keep training and make yourself much better...I'll be watching you from here and there...")
		self.say("I just gave you a little bit of #bSP#k. When you open up the #bSkill menu#k on the lower left corner of the screen, there are skills you can learn by using SP's. One warning, though: You can't raise it all together all at once. There are also skills you can acquire only after having learned a couple of skills first.")
		self.say("One more warning. Once you have chosen your job, try to stay alive as much as you can. Once you reach that level, when you die, you will lose your experience level. You wouldn't want to lose your hard-earned experience points, do you?")
		self.say("OK! This is all I can teach you. Go to places, train and better yourself. Find me when you feel like you've done all you can, and need something interesting. I'll be waiting for you here...")
		self.say("Oh, and... if you have any questions about being the Magician, feel free to ask. I don't know EVERYTHING, per se, but I'll help you out with all that I know of. Til then...")
	else
		self.say("You need more training to be a Magician. In order to be one, you need to train yourself to be more powerful than you are right now. Please come back much stronger.")
	end
else
	self.say("Would you like to have the power of nature in itself in your hands? It may be a long, hard road to be on, but you'll surely be rewarded in the end, reaching the very top of wizardry...")
end