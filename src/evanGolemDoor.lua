quest = target.get_quest(22557)
target.field = 100040000

if quest.state != -1 then
	quest.complete()
	--	pi.playerMessage(5, "Camilla rescued!");
	target.sp = target.sp + 1
end