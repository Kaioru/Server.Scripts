-- TODO: second job, third job
charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
charJob = require "lib/charJob"

if charJob.jobIsBeginner() then
	self.say("So you want to become the Bowman??? Well...you need to meet some requirements to do so...at least #bLevel10#k. Let's see...hmm...")
	if target.level >= charConstants.getLvlCheckValue("firstJobAdvOther") then
		self.say("You look qualified for this. With a great pair of eyes being able to spot the real monsters and have the coldhearted skills to shoot the arrow through them...we needed someone like that. Do you want to become a Bowman?")
		self.say("Alright! You are the Bowman from here on out, because I said so...haha here's a little bit of my power to you...Haahhhh!")

		charJob.setStatsBowman1stJob()
		charInventory.giveBowman1stJobItems()
		charInventory.increaseEQPslots(1)
		charInventory.increaseUSEslots(1)
		
		self.say("I have added slots for your equipment and use inventory. You have also gotten much stronger. Train harder, and you may one day reach the very top of the bowman. I'll be watching you from afar. Please work hard.")
		self.say("I just gave you a little bit of #bSP#k. When you open up the #bSkill menu#k on the lower left corner of the screen, there are skills you can learn by using SP's. One warning, though: You can't raise it all together all at once. There are also skills you can acquire only after having learned a couple of skills first.")
		self.say("One more warning. Once you have chosen your job, try to stay alive as much as you can. Once you reach that level, when you die, you will lose your experience level. You wouldn't want to lose your hard-earned experience points, do you?")
		self.say("OK! This is all I can teach you. Go to places, train and better yourself. Find me when you feel like you've done all you can, and need something interesting. I'll be waiting for you.")
		self.say("Oh, and... if you have any other questions about being the Bowman, feel free to ask. I don't every single thing about  being the bowman, but I'll answer as many questions as I can. Til then...")
	else
		self.say("You need to train more. Don't think being the Bowman is a walk in the park...")
	end
else
	self.say("Don't you want to feel the excitement of hunting down the monsters from out of nowhere? Only the Bowman can do that...")
end