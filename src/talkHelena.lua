 -- TODO: need proper quest handling
quest = target.get_quest(21002)

self.say("Aran, you're awake! How are you feeling? Hm? You want to know what's been going on?")
self.say("We're almost done preparing for the escape. You don't have to worry. Everyone I could possibly find has boarded the ark, and Shinsoo has agreed to guide the way. We'll head to Victoria Island as soon as we finish the remaining preparations.")
self.say("The other heroes? They've left to fight the Black Mage. They're buying us time to escape. What? You want to fight with them? No! You can't! You're hurt. You must leave with us!")

---if quest.state == 0x1 then
	--self.say("We're in a dire situation. What would you like to know? \r\n#b#L0#About the Black Mage#l \r\n#b#L1#About the preparations for the escape#l \r\n#b#L2#About the other heroes#l")
	--self.say("I hear the Black Mage is very close. We can't even go into the forest because the dragons serving the Black Mage are there. That's why we're taking this route. We don't have any choice but to fly to Victoria Island, Aran...")
	--self.say("We're almost ready to go. We can head over to Victoria Island as soon as the remaining few people board the ark. Shinsoo says there isn't anyone left in Ereve he needs to protect, so he's agreed to guide us.")
	--self.say("The other heroes... They've already left to fight the Black Mage. They're slowing the Black Mage down so the rest of us can escape. They didn't want to take you with them because you were injured. Escape with us, Aran, as soon as we rescue the child!")
--end

--quest.accept()
--target.reversev_effect("Effect/Direction1.img/aranTutorial/Trio")