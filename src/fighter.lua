-- TODO: second job, third job
charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
charJob = require "lib/charJob"

if charJob.jobIsBeginner() then
	self.say("Do you wish to be a Warrior? You need to meet some criteria in order to do so. #bYou need to be at least in Level 10#k. Let's see...")
	if target.level >= charConstants.getLvlCheckValue("firstJobAdvOther") then
		self.say("You definitely have the look of a Warrior. You may not be there just yet, but I can see the Warrior in you. What do you think? Do you want to become a Warrior?")
		self.say("From here on out, you are going to be the Warrior! Please continue working hard...I'll enhance your abilities a bit with the hope of you training yourself to be even stronger than you're now. Haaaaaap!!")

		charJob.setStatsWarrior1stJob()
		charInventory.giveWarrior1stJobItems()
		charInventory.increaseEQPslots(1)
		charInventory.increaseUSEslots(1)
		charInventory.increaseINSslots(1)
		charInventory.increaseETCslots(1)

		self.say("You've gotten much stronger now. Plus every single one of your inventories have added slots. A whole row, to be exact. Go see for it yourself. I just gave you a little bit of #bSP#k. When you open up the #bSkill menu#k on the lower left corner of the screen, there are skills you can learn by using SP's. One warning, though: You can't raise it all together all at once. There are also skills you can accquire only after having learned a couple of skills first.")
	else
		self.say("You need more training to be a Warrior. In order to be one, you need to train yourself to be more powerful than you are right now. Please come back much stronger.")
	end
else
	self.say("Awesome body! Awesome power! Warriors are the way to go!!!! What do you think? Want to make the job advancement as a Warrior")
end