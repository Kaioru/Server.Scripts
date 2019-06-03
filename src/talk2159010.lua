speakerVita2 = self.as_speaker(2159007)
speakerJ = self.as_speaker(2159010)

self.say({
	speakerJ.get_speech("Looks like we lost him. Of course, I could've easily handled him, no problemo, but I wasn't sure I protect you kiddos at the same time. *chuckle* What're you two doing here anyway? Didn't your parents warn you to steer clear of the mines?"),
	speakerVita2.get_speech("It's my fault! #h0# was just trying to help! #h0# rescued me!"),
	speakerJ.get_speech("Rescued you, eh? Hm, you are dressed kind of funny, little girl. Ooooh. Were you a prisoner of the Black Wings?"),
	speakerVita2.get_speech("#b(Vita quickly explains the situation.)#k"),
	speakerJ.get_speech("Ah, yes, I knew the Black Wings were up to something dangerous. I knew it all along. I must tell the others so we can devise a plan."),

	target.get_speech("But who are you? Where did you come from? And why did you rescue us?"),

	speakerJ.get_speech("I suppose I can't hide it after everything you've seen today, including but not limited to my heroic rescue and brazen bravery. *cough* You know our grand city of Edelstein is currently under the control of the Black Wings, right?"),
	speakerJ.get_speech("The stolen mines, the occupation of City Hall, the existence of the Watchmen... They are all signs that we no longer have our liberty. Despite all that, the Black Wings will never rule our hearts!"),
	speakerJ.get_speech("I am a proud member of the Resistance, a group secretly fighting and undermining the Black Wings. I cannot tell you who I am, but I go by the codename of J."),
	speakerJ.get_speech("Now, please return to town and stay away from the mines. As for you, Vita, come with me. If you're left unprotected, I fear the Black Wings will come look for you. No one can keep you safe like I can! Now, keep my words a secret. The fate of the Resistance depends on your discretion."),

	target.get_speech("Wait, before you go, tell me one thing. How can I join the Resistance?"),

	speakerJ.get_speech("Ah, little youngling, so you wish to fight the Black Wings, do you? Your heart is noble, but there is little you can do to aid our efforts until you reach Lv. 10. Do so, and I will have someone from the Resistance contact you. That's a promise, kiddo. Now, I must be off, but perhaps we will meet again someday!")
})

quest = target.get_quest(23007)
quest.complete()
inventory = target.get_inventory()
inventory.add(2000000, 3)
inventory.add(2000003, 3)
target.exp = target.exp + 90
--TODO: C.DisableUI(False);
target.transfer_field(310000000, 8)