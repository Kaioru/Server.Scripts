quest = target.get_quest(23007)
speakerVita = self.as_speaker(2159006)

if quest.record_key("vel00") != "1" then
	self.say ({
		speakerVita.get_speech("Stay back!"),
		speakerVita.get_speech("How did you get there? This place is prohibited."),
		target.get_speech("Whos talking?! Where are you?!"),
		speakerVita.get_speech("Look up.")
	})

	quest.update("vel00", "1") 
	target.reserved_effect("Effect/Direction4.img/Resistance/ClickVel")
elseif (quest.record_key("vel00") == "1" and quest.record_key("vel01") != "1") then
	self.say ({
		speakerVita.get_speech("My name is #bVita#k. I'm one of #rDoctor Gelimer's#k test subjects. But that's not important right now. You have to get out of here before someone sees you!"),
		target.get_speech("Wait, what are you talking about? Someone's doing experiments on you?! And who's Gelimer?"),
		speakerVita.get_speech("You've never heard of Doctor Gelimer, the Black Wings' mad scientist? This is his lab, where he conducts experiments...on people."),
		target.get_speech("Experiments...on people? Are you serious?"),
		speakerVita.get_speech("Yes! And if he catches you here, he won't be merciful. Get out of here! Quickly!"),
		target.get_speech("What? But what about you?!"),
		speakerVita.get_speech("Shhh! Did you hear that? Someone's coming! It's got to be Doctor Gelimer! Oh no!")
	})

	quest.update("vel01", "1") 
	target.field = 931000011
elseif quest.record_key("vel01") == "1" then
		target.direction_mode = false

	self.say ({
		speakerVita.get_speech("Whew, something must have distracted them. Now's your chance. GO!"),
		target.get_speech("But if i flee, you'll be left here alone."),
		speakerVita.get_speech("Forget about me. You can't help me. Doctor Gelimer would realize right away if I'm missing, and then he'd summon the Black Wings to look for us. No, forget me and save yourself. Please!"),
		target.get_speech("I can't just leave you here! And you shouldn't give up hope so easily!"),
		speakerVita.get_speech("But it IS hopeless. I'm stuck in here. But thank you for caring. It's been a long time since anyone's been kind to me. But now, hurry! You must go!")
	})

	if self.ask_yes_no("#b(Vita closes her eyes like she's given up. What should you do? How about trying to break open the vat?)#k") then
	  target.exp = target.exp + 60
	  target.field = 931000013
	else
	  target.say("#b(You tried to hit the vat with all your might, but your hand slipped!)#k")
	  target.exp = target.exp + 60
	  target.field = 931000013
	end
end