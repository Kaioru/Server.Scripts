charInventory = require "lib/charInventory"
mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("RogersApple"))
roger = self.as_speaker(npcSpeakers.getID("Roger"))
male = 0x0
female = 0x1

if target.gender == male then
	self.say({
		roger.get_speech("Hey, Man~  What's up? Haha!  I am #p2000# who can teach you adorable new Maplers lots of information."),
		roger.get_speech("You are asking who made me do this?  Ahahahaha!  Myself!  I wanted to do this and just be kind to you new travellers.")
	})
else
	self.say({
		roger.get_speech("Hey there, Pretty~ I am #p2000# who teaches you adorable new Maplers lots of information."),
		roger.get_speech("I know you are busy! Please spare me some time~ I can teach you some useful information! Ahahaha!")
	})
end

if roger.ask_yes_no("So.....  Let me just do this for fun! Abaracadabra~!") then
	if target.hp > 25 then
		target.hp = 25
	end

	self.say({
		roger.get_speech("Surprised?  If HP becomes 0, then you are in trouble.  Now, I will give you #r#t2010007##k.  Please take it.  You will feel stronger.  Open the Item window and double click to consume.  Hey, It's very simple to open the Item window.  Just press #bI#k on your keyboard.#I"),
		roger.get_speech("Please take all #t2010007#s that I gave you.  You will be able to see the HP bar increasing.  Please talk to me again when you recover your HP 100%#I ")
	})

	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("infoHPAlert"))
	charInventory.giveRogersApple()

	self.say({
		roger.get_speech("How easy is it to consume the item?  Simple, right? You can set a #bhotkey#k on the right bottom slot.  Haha, you didn't know that, right?  Oh, and if you are a beginner, HP will automatically recover itself as time goes by.  Well, it takes time, but this is one of the strategies for beginners."),
		roger.get_speech("Alright!  Now that you have learned a lot, I will give you a present.  This is a must for your travel in Maple World, so thank me!  Please use this under emergency cases!"),
		roger.get_speech("Okay, this is all I can teach you.  I know it's sad but it is time to say good bye.  Well take care of yourself and Good luck my friend!\r\n\r\n#fUI/UIWindow.img/QuestIcon/4/0#\r\n#v2010000# 3 #t2010000#\r\n#v2010009# 3 #t2010009#\r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 10 exp")
	})

	charInventory.giveRogersReward()
	quest.complete()
	target.exp = target.exp + mapQuests.getQuestExpReward("RogersAppleFinish")
else
	if target.gender == male then
		roger.say("I can't believe an attractive guy like myself got turned down!")
	else
		roger.say("I can't believe you have just turned down an attractive guy like me!")
	end
end