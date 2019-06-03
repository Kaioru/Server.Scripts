--TODO: debug the right quest key records

quest = target.get_quest(23007)

if (quest.record_key("vel00") == "-1" and quest.record_key("vel01") == "-1") then
    self.say("Stay back!")
	target.say("Whos talking?! Where are you?!")
	self.say("Look up.")
	quest.update("vel00", "1") 
	target.screen_field_effect("Effect/Direction4.img/Resistance/ClickVel")
elseif (quest.record_key("vel00") == "1" and quest.record_key("vel01") == "-1") then
	self.say("My name is #bVita#k. I'm one of #rDoctor Gelimer's#k test subjects. But that's not important right now. You have to get out of here before someone sees you!")
	target.say("Wait, what are you talking about? Someone's doing experiments on you?! And who's Gelimer?")
	self.say("You've never heard of Doctor Gelimer, the Black Wings' mad scientist? This is his lab, where he conducts experiments...on people.")
	target.say("Experiments...on people? Are you serious?",2);
	self.say("Yes! And if he catches you here, he won't be merciful. Get out of here! Quickly!")
	target.say("What? But what about you?!")
	self.say("Shhh! Did you hear that? Someone's coming! It's got to be Doctor Gelimer! Oh no!")
	quest.update("vel01", "1") 
	target.field = 931000011
elseif quest.record_key("vel01") == "1" then
	self.say("Whew, something must have distracted them. Now's your chance. GO!")
	target.say("#b(Vita closes her eyes like she's given up. What should you do? How about trying to break open the vat?)#k")
	target.say("#b(You tried to hit the vat with all your might, but your hand slipped!)#k")
	target.exp = target.exp + 60
	target.field = 931000013
end