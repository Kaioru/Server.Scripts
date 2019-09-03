-- TODO: second job, third job
charInventory = require "lib/charInventory"
charConstants = require "lib/charConstants"
charJob = require "lib/charJob"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("Infiltration"))

if charJob.belongsTo("beginner") then
	self.say("Want to be a thief? There are some standards to meet, because we can't just accept EVERYONE in ... #bYour level should be at least 10#k. Let's see...")
	if target.level >= charConstants.getLvlCheckValue("firstJobAdvOther") then
		self.say("Oh...! You look like someone that can definitely be a part of us...all you need is a little sinister mind, and...yeah...so, what do you think? Wanna be the Rouge?")
		self.say("Alright, from here on out, you are part of us! You'll be living the life of a wanderer at first, but just be patient and soon, you'll be living the high life. Alright, it ain't much, but I'll give you some of my abilities...HAAAHHH!!")
		
		charJob.setAdvStats("thief")
		charInventory.giveRogue1stJobItems()
		charInventory.increaseEQPslots(1)
		charInventory.increaseETCslots(1)

		-- TODO: this is a temporary fix until quest data are properly handled	
		if quest.state == mapQuests.getState("Perform") then 
			quest.complete()
		end

		self.say("I've just created more slots for your equipment and etc. storage. Not only that, but you've also gotten stronger as well. As you become part of us, and learn to enjoy life in different angles, you may one day be on top of this of darkness. I'll be watching your every move, so don't let me down.")
		self.say("I just gave you a little bit of #bSP#k. When you open up the #bSkill menu#k on the lower left corner of the screen, there are skills you can learn by using SP's. One warning, though: You can't raise it all together all at once. There are also skills you can acquire only after having learned a couple of skills first.")
		self.say("One more warning. Once you have chosen your job, try to stay alive as much as you can. Once you reach that level, when you die, you will lose your experience level. You wouldn't want to lose your hard-earned experience points, do you?")
		self.say("OK! This is all I can teach you. Go to places, train and better yourself. Find me when you feel like you've done all you can, and need something interesting. Then, and only then, I'll hook you up with more interesting experiences...")
		self.say("Oh, and... if you have any questions about being the Thief, feel free to ask. I don't know EVERYTHING, but I'll help you out with all that I know of. Til then...")
	else
		self.say("Hmm...you're still a beginner...doesn't look like you can hang out with us, yet... make yourself much stronger, THEN find me...")
	end
else
	self.say("Exploring is good, and getting stronger is good and all... but don't you want to enjoy living the life as you know it? How about becoming a Rouge like us and really LIVE the life? Sounds fun, isn't it?")
end