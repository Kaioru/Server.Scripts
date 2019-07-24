mapQuests = require "lib/mapQuests"
npcSpeakers = require "lib/npcSpeakers"

quest = target.get_quest(mapQuests.getID("WelcomeToEreve"))
kimu = self.as_speaker(npcSpeakers.getID("Kimu"))

kimu.say("Welcome to Ereve! And you are? Oh, you're #b#h ##k! \r\nGood to meet you. I've been waiting. You've come to become a Cygnus Knight, right? My name is Kimu, and I'm currently guiding Noblesses like you at the request of Empress Cygnus.")
kimu.say("If you want to officially become a part of Cygnus Knights, you must first meet the Empress. She's at the center of this island, accompained by Shinsoo. My brothers and I would like to share with you a few things that are considered #bBasic Knowledge#k in Maple World before you go. Would that be okay?")
kimu.say("Oh, let me warn you that this is a Quest. You may have noticed that NPCs around Maple World occasionally ask you for various favors. A favor of that sort is called a #bQuest#k. You will receive reward items or EXP upon completing Quests, so I strongly suggest you diligently fulfill the favors of Maple NPCs.")

if kimu.ask_yes_no("Would you like to meet #bKizan#k, who can tell you about hunting? You can find Kizan by following the arrow to the left.") then
	quest.accept()
	target.tutor_message(2, 7000)
else
	kimu.say("Whoa, whoa! Are you really declining my offer? Well, you'll be able to #blevel-up quicker #kwith our help, so let me know if you change your mind. Even if you've declined a Quest, you can receive the Quest again if you just come and talk to me.")
end