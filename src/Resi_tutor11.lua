npcSpeakers = require "lib/npcSpeakers"
mapFields = require "lib/mapFields"

jun = self.as_speaker(npcSpeakers.getID("Jun"))
ulrika = self.as_speaker(npcSpeakers.getID("Ulrika"))
von = self.as_speaker(npcSpeakers.getID("Von"))

self.say({
	ulrika.get_speech("There you are, #h0#! You're late. Get over here."),
	von.get_speech("What was the hold up? You scared or something?"),
    
    target.get_speech("Don't be ridiculous."),
    
    jun.get_speech("You're not s-s-scared at all? I am, a little b-b-bit... The grown-ups warned us never to venture into the #bVerne Mines#k... Plus, there are all those #rBlack Wings#k around, watching us, I just know it."),
    von.get_speech("We snuck here, jun. No one saw us. No one's watching us, okay? Come on, when else would we have ever gotten the chance to leave #bEdelstein#k? Don't be a chicken."),
    jun.get_speech("But what if we get in trouble?"),
    ulrika.get_speech("jun, we're already here. If we're going to get in trouble, let's at least have some fun first. Let's play hide-and-seek!"),
    
    target.get_speech("Hide and seek?"),
    
    von.get_speech("Ugh, la-ame."),
    ulrika.get_speech("Don't be a brat, von. What? Are you scared to hide all by yourself in these big, bad caves? *snicker* \r\n#h0#, since you were late, you're it. Count to 10 and then come find us. No peeking.")
})

target.transfer_field(mapFields.getID("NeglectedRockyMountain2"), 1)