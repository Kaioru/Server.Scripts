 -- TODO: need proper quest handling
quest = target.get_quest(21002)

if quest.record_key("normal") == "" then
    quest.update("normal", "o")
	--P.ShowInfo('To use a Regular Attack on monsters, press the Ctrl key.');
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialGuide1")
end