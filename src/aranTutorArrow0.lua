 -- TODO: need proper quest handling
quest = target.get_quest(21002)

if quest.record_key("arr0") == "" then
    quest.update("arr0", "o")
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow3")
end