-- TODO: QuestRecordsEX vel00=1
quest = target.get_quest(23007)
speaker = self.as_speaker(2159006)

if quest.state != -1 then
   speaker.say("Stay back.")
   speaker.say("How did you get there? This place is prohibited.")
   target.say("Whos talking? Where are you?!")
   speaker.say("Look up.")
end