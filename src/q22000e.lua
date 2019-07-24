mapQuests = require "lib/mapQuests"
mapEffects = require "lib/mapEffects"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("StrangeDream"))	
utah = self.as_speaker(npcSpeakers.getID("Utah"))

utah.say("Hey, Evan. You up? What's with the dark circles under your eyes? Didn't sleep well? Huh? A strange dream? What was it about? Whoa? A dream about a dragon?")
utah.say("Muahahahahaha, a dragon? Are you serious? I don't know how to interpret dreams, but that sounds like a good one! Did you see a dog in your dream, too? Hahaha! \r\n\r\n#fUI/UIWindow.img/QuestIcon/8/0# 20 exp")
quest.complete()
target.exp = target.exp + mapQuests.getQuestExpReward("StrangeDreamFinish")
target.avatar_oriented_effect(mapEffects.getAvatarOrientedEffect("evan2"))