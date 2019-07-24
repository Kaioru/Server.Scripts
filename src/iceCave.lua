	mapEffects = require "lib/mapEffects"
	
	-- TODO: unlearn skills
	--ms.teachSkill(20000014, -1, 0, -1);
	--ms.teachSkill(20000015, -1, 0, -1);
	--ms.teachSkill(20000016, -1, 0, -1);
	--ms.teachSkill(20000017, -1, 0, -1);
	--ms.teachSkill(20000018, -1, 0, -1);

	target.direction_mode = false
	target.reserved_effect(mapEffects.getReservedEffect("clickLilin"))