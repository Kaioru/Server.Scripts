quest = target.get_quest(23007)
  
if quest.record_key("vel01") != "2" then
	target.say("Whoa. Wh-what happened? The glass is broken... Did that vibration earlier break it?")
	target.say("Now, there's nothing stopping you right? Let's get out of here!")
	self.say("But...")
	target.say("Do you WANT to stay here or something?")
	self.say("Of course not!")
	target.say("Then hurry up! Let's go!")
	quest.update("vel00", "2")
	quest.update("vel01", "2")
	target.transfer_field(931000020, 1)
elseif quest.record_key("vel01") == "2" then
	self.say("It's been...a really long time since I've been outside the laboratory. Where are we?")
	target.say("This is the road that leads to Edelstein, where I live! Let's get out of here before the Black Wings follow us.")
	quest.update("vel00", "2")
	quest.update("vel01", "3")
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow1")
end	

self.say("It's been...a really long time since I've been outside the laboratory.")