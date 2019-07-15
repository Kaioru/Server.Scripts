local mapEffects = {}

local avatarOrientedEffects = { 
-- Evan Tutorial --
	evanBalloon00 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon00",
-- Aran Tutorial --
	tutorialArrow1 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow1", --unused yet
	tutorialArrow2 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow2", --unused yet
	tutorialArrow3 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialArrow3",
	tutorialGuide1 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialGuide1",
	tutorialGuide2 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialGuide2", --unused yet
	tutorialGuide3 = "Effect/OnUserEff.img/guideEffect/aranTutorial/tutorialGuide3", --unused yet
	legendBalloon1 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon1",
	legendBalloon2 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon2",
	legendBalloon3 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon3",
	legendBalloon4 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon4", --unused yet
	legendBalloon5 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon5", --unused yet
	legendBalloon6 = "Effect/OnUserEff.img/guideEffect/aranTutorial/legendBalloon6"
}

local screenFieldEffects = {
	enter104000000 = "maplemap/enter/104000000",
}

local reservedEffects = {
	scene0 = "Effect/Direction4.img/promotion/Scene0"
	scene1 = "Effect/Direction4.img/promotion/Scene1"
	scene2 = "Effect/Direction4.img/promotion/Scene2"
	scene3 = "Effect/Direction4.img/promotion/Scene3"
	meetWithDragon = "Effect/Direction4.img/meetWithDragon/Scene",
	child = "Effect/Direction1.img/aranTutorial/Child",
	clickChild = "Effect/Direction1.img/aranTutorial/ClickChild",
}

function mapEffects.getAvatarOrientedEffect(key)
    return avatarOrientedEffects[key]
end

function mapEffects.getScreenFieldEffect(key)
    return screenFieldEffects[key]
end

function mapEffects.getReservedEffect(key)
    return reservedEffects[key]
end

return mapEffects