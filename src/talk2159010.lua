charInventory = require "lib/charInventory"
npcSpeakers = require "lib/npcSpeakers"
mapQuests = require "lib/mapQuests"

quest = target.get_quest(mapQuests.getID("VitaEscape"))
vita2 = self.as_speaker(npcSpeakers.getID("Vita2"))
j = self.as_speaker(npcSpeakers.getID("J"))

self.say({
	j.get_speech("Looks like we lost him. Of course, I could've easily handled him, no problemo, but I wasn't sure I protect you kiddos at the same time. *chuckle* What're you two doing here anyway? Didn't your parents warn you to steer clear of the mines?"),
	vita2.get_speech("It's my fault! #h0# was just trying to help! #h0# rescued me!"),
	j.get_speech("Rescued you, eh? Hm, you are dressed kind of funny, little girl. Ooooh. Were you a prisoner of the Black Wings?"),
	vita2.get_speech("#b(Vita quickly explains the situation.)#k"),
	j.get_speech("Ah, yes, I knew the Black Wings were up to something dangerous. I knew it all along. I must tell the others so we can devise a plan."),

	target.get_speech("But who are you? Where did you come from? And why did you rescue us?"),

	j.get_speech("I suppose I can't hide it after everything you've seen today, including but not limited to my heroic rescue and brazen bravery. *cough* You know our grand city of Edelstein is currently under the control of the Black Wings, right?"),
	j.get_speech("The stolen mines, the occupation of City Hall, the existence of the Watchmen... They are all signs that we no longer have our liberty. Despite all that, the Black Wings will never rule our hearts!"),
	j.get_speech("I am a proud member of the Resistance, a group secretly fighting and undermining the Black Wings. I cannot tell you who I am, but I go by the codename of J."),
	j.get_speech("Now, please return to town and stay away from the mines. As for you, Vita, come with me. If you're left unprotected, I fear the Black Wings will come look for you. No one can keep you safe like I can! Now, keep my words a secret. The fate of the Resistance depends on your discretion."),

	target.get_speech("Wait, before you go, tell me one thing. How can I join the Resistance?"),

	j.get_speech("Ah, little youngling, so you wish to fight the Black Wings, do you? Your heart is noble, but there is little you can do to aid our efforts until you reach Lv. 10. Do so, and I will have someone from the Resistance contact you. That's a promise, kiddo. Now, I must be off, but perhaps we will meet again someday!")
})

quest.complete()
charInventory.giveRewardJ()
target.exp = target.exp + mapQuest.getQuestExpReward("VitaEscapeFinish")
target.transfer_field(mapFields.getID("Edelstein"), 8)