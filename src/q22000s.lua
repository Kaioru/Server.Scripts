mapQuests = require "lib/mapQuests"
mapFields = require "lib/mapFields"
charInventory = require "lib/charInventory"

quest = target.get_quest(mapQuests.getID("StrangeDream"))	
anna = self.as_speaker(npcSpeakers.getID("Anna"))

self.say({
	anna.get_speech("Did you sleep well, Evan?"),
	target.get_speech("#bYes, what about you, Mom?"),
	anna.get_speech("I did as well, but you seem so tired. Are you sure you slept okay? Did the thunder and lightning last night keep you up?"),
	target.get_speech("#bOh, no. It's not that, Mom. I just had a strange dream last night."),
	anna.get_speech("A strange dream? What kind of strange dream?"),
	target.get_speech("#bWell..."),
	target.get_speech("#b(You explain that you met a dragon in your dream.)"),
})

if anna.ask_yes_no("Hahaha, a dragon? That's incredible. I'm glad he didn't swallow you whole! You should tell #p1013101# about your dream. I'm sure he'll enjoy it.") then	
	quest.accept()
	anna.say("#b#p1013101##k went to the #b#m100030102##k to feed the Bull Dog. You'll see him right outside.")
else
	anna.say("Hm? Don't you want to tell #p1013101#? You have to be nice to your brother, dear.")
end

target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evan1"))

if quest == mapQuests.getState("Perform") then
	anna.say("Hey, Evan. You up? What's with the dark circles under your eyes? Didn't sleep well? Huh? A strange dream? What was it about? Whoa? A dream about a dragon?")
	anna.say("Muahahahahaha, a dragon? Are you serious? I don't know how to interpret dreams, but that sounds like a good one! Did you see a dog in your dream, too? Hahaha! \r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 20 exp")
	quest.complete()
	target.exp = target.exp + 20
	target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evan2"))
end