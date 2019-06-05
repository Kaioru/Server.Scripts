quest = target.get_quest(21002)

if quest.record_key("mo1") == "" then
    quest.update("mo1", "o")
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon1")
end