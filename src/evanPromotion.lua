--todo: disable UI,lock actions, enable actions

if target.field == 900090000 then
    target.squib_effect("Effect/Direction4.img/promotion/Scene0" .. target.gender)
elseif target.field == 900090001 then
    target.squib_effect("Effect/Direction4.img/promotion/Scene1")
elseif target.field == 900090002 then
    target.squib_effect("Effect/Direction4.img/promotion/Scene2" .. target.gender)
elseif target.field == 900090003 then
    target.squib_effect("Effect/Direction4.img/promotion/Scene3")
elseif target.field == 900090004 then
	target.transfer_field(900010000, 0)
end