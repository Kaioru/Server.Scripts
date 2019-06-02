-- TODO:
-- Needs fixing
quest1 = target.get_quest(1041)
quest2 = target.get_quest(1042)
quest3 = target.get_quest(1043)
quest4 = target.get_quest(1044)
-- Who actually speaks here? the portal? Mai? instructor?
speaker = self.as_speaker(10301)

if quest1.state == 0x1 then
	target.transfer_field(1010100, 4)
end

if quest2.state == 0x1 then
	target.transfer_field(1010200, 4)
end

if quest3.state == 0x1 then
	target.transfer_field(1010300, 4)
end

if quest4.state == 0x1 then
	target.transfer_field(1010400, 4)
end

speaker.say("Only the adventurers that have been trained by Mai may enter.")