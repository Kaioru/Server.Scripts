quest = target.get_quest(21002)

if quest.record_key("mo1") == "o" then
	--AranStart()
    quest.update("mo1", "o")    
	quest.update("mo2", "o")
	target.avatar_oriented_effect("Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon2")
end