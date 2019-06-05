speakerSchiller = self.as_speaker(2159008)
speakerJ = self.as_speaker(2159010)

self.say ({
	speakerSchiller.get_speech("Little rats. I say, how DARE you try to escape this place?"),
	target.get_speech("Shoot, we were spotted!"),
	speakerSchiller.get_speech("Now, now, children. Don't make this harder than it needs to be. Just walk towards me, nice and easy... Wait, you're not one of the test subjects. You're one of the townspeople, aren't you?"),
	target.get_speech("That's right. I'm a resident of Edelstein, not a test subject. You can't boss ME around."),
	speakerSchiller.get_speech("Oh my, oh my. I told them to make sure the townspeople kept their kids away from the mines... Alas, it's too late now. I can't allow you to tell anyone about this laboratory, so I guess you'll just have to stay here and...help with the experiments. *snicker*"),
	target.get_speech("Hmph. Big words, but let's see if you can catch me first."),
	speakerSchiller.get_speech("Why, you insolent, little-- Ahem, ahem, ahem. Your words don't matter. Time for me to pull out the big guns. I do hope you're ready. If not, you will suffer.")
})

if target.hp >= 2 then
	target.hp = target.hp / 2
end

self.say ({
	target.get_speech("#b(Oh no! Schiller's attack HALVED your HP! He's tougher than you anticipated.)#k"),
	speakerSchiller.get_speech("I say, got any more big words, kiddo? I'll make sure Gelimer performs some especially atrocious experiments on you. But I'll be nice if you come with me quiet-like."),
	speakerJ.get_speech("Hold it right there!")
})
target.direction_mode = true
target.transfer_field(931000021, 1)