-- TODO: directionmode/lockUI
if target.field == 900090000 then
    target.reserved_effect("Effect/Direction4.img/promotion/Scene0" .. target.gender)
elseif target.field == 900090001 then
    target.reserved_effect("Effect/Direction4.img/promotion/Scene1")
elseif target.field == 900090002 then
    target.reserved_effect("Effect/Direction4.img/promotion/Scene2" .. target.gender)
elseif target.field == 900090003 then
    target.reserved_effect("Effect/Direction4.img/promotion/Scene3")
elseif target.field == 900090004 then
	target.field = 900010000
end