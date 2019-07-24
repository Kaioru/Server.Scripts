mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
npcSpeakers = require "lib/npcSpeakers"

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