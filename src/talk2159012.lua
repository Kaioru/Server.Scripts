speakerSchiller = self.as_speaker(2159008)
speakerGelimer = self.as_speaker(2159012)

self.say({
	speakerGelimer.get_speech("The experiment is going well, quite well. The endless supply of Rue is certainly speeding things along. Joining the Black Wings was a wise decision, a wise decision indeed. Muahaha!"),
	speakerSchiller.get_speech("I say, you have great foresight about these things."),
	speakerGelimer.get_speech("The android the Black Wings wanted will be completed soon. Oh yes, very soon. Then, the next stage will begin! I will conduct an experiment wilder than their wildest dreams!"),
	speakerSchiller.get_speech("Pardon? The next stage?"),
	speakerGelimer.get_speech("Teeheehee, do you still not comprehend what I'm trying to create? Look around! Here's a clue: it's eons more interesting than a simple android. Eons more interesting."),
	speakerSchiller.get_speech("What?? All these test subjects... I say, sir, just what are you planning to do?"),
	speakerGelimer.get_speech("Now, now, you may not understand the grandness of my experiments. I don't expect you to. No, I don't expect you to. Just focus on your job and make sure none of the test subjects run away."),
	speakerGelimer.get_speech("Hey... Did you hear that?"),
	speakerSchiller.get_speech("Huh? Well... Now that you mention it, I do hear something. Yes, I do hear something...")
})
target.reserved_effect("Effect/Direction4.img/Resistance/TalkInLab")