speaker = self.as_speaker(2159011)

if speaker.ask_yes_no("#b(What a suspicious hole. Maybe Von is hiding inside. Peek inside?)#k") then
  target.exp = target.exp + 35
  target.field = 931000010
else
  speaker.say("Even Von wouldn't hide here, right?")
end