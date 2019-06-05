speakerPirate = self.as_speaker(1090000)
speakerWarrior = self.as_speaker(1022000)
speakerThief = self.as_speaker(1052001)
speakerBowman = self.as_speaker(1012100)
speakerMagician = self.as_speaker(1032001)

if target.level >= 10 and target.job == 0 then
	if target.field == 120000101 then
		target.converse("kairinT", speakerPirate, target)
	elseif target.field == 102000003 then
		target.converse("fighter", speakerWarrior, target)
	elseif target.field == 103000003 then
		target.converse("rogue", speakerThief, target)
	elseif target.field == 100000201 then
		target.converse("bowman", speakerBowman, target)
	elseif target.field == 101000003 then
		target.converse("magician", speakerMagician, target)
	end
end