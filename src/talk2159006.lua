-- TODO: QuestRecordsEX vel00=2"
self.say("My name is #bVita#k. I''m one of #rDoctor Gelimer''s#k test subjects. But that''s not important right now. You have to get out of here before someone sees you!")

target.say("Wait, what are you talking about? Someone''s doing experiments on you?! And who''s Gelimer?")

self.say("Shhh! Did you hear that? Someone''s coming! It''s got to be Doctor Gelimer! Oh no!")

quest = target.get_quest(23007)
quest.update("vel00=2")
target.field = 931000011