quest = target.get_quest(23007)
speakerVita2 = self.as_speaker(2159007)
  
if quest.record_key("vel01") != "2" then
	self.say ({
		target.get_speech("Whoa. Wh-what happened? The glass is broken... Did that vibration earlier break it?"),
		target.get_speech("Now, there's nothing stopping you right? Let's get out of here!"),
		speakerVita2.get_speech("But..."),
		target.get_speech("Do you WANT to stay here or something?"),
		speakerVita2.get_speech("Of course not!"),
		target.get_speech("Then hurry up! Let's go!")
	})
	quest.update("vel00", "2")
	quest.update("vel01", "2")
	target.transfer_field(931000020, 1)
elseif quest.record_key("vel01") == "2" then
	self.say ({
		speakerVita2.get_speech("It's been...a really long time since I've been outside the laboratory. Where are we?"),
		target.get_speech("This is the road that leads to Edelstein, where I live! Let's get out of here before the Black Wings follow us.")
	})
	quest.update("vel00", "2")
	quest.update("vel01", "3")
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow1")
else
	self.say("It's been...a really long time since I've been outside the laboratory.")
end