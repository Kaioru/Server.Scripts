--NPC: 931000400  TODO: Needs fixing
quest1 = target.get_quest(23100)
--quest2 = target.get_quest(1042)
--quest3 = target.get_quest(1043)
--quest4 = target.get_quest(1044)
speaker = self.as_speaker(2151007)

speaker.say("So your the freshman? .... TODO: what do i say actually?")

quest1.complete()
--[[ 
if quest1.state == 0x1 then
	target.transfer_field(310010100, 4)
end
if quest2.state == 0x1 then
	target.transfer_field(310010200, 4)
end
if quest3.state == 0x1 then
	target.transfer_field(310010300, 4)
end
if quest4.state == 0x1 then
	target.transfer_field(310010400, 4)
end
if quest4.state == 0x1 then
	target.transfer_field(310010500, 4)
end
cm.sendSimple("#b\r\n#L0#Training Room A#l\r\n#L1#Training Room B#l\r\n#L2#Training Room C#l\r\n#L3#Training Room D#l#k");
]]--