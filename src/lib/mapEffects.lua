local mapEffects = {}

local avatarOrientedEffects = {
-- Adventurer tutorial --
	infoAttack = "UI/tutorial.img/20"
	infoPickUp = "UI/tutorial.img/21"
	infoReactor1 = "UI/tutorial.img/22"
	infoSkill = "UI/tutorial.img/23"
	-- = "UI/tutorial.img/24" -- ??
	infoMinimap = "UI/tutorial.img/25"
	infoWorldMap = "UI/tutorial.img/26"
	infoReactor2 = "UI/tutorial.img/27"
	infoHPAlert = "UI/tutorial.img/28" -- todo:check
-- Evan Tutorial --
	evanBalloon00 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon00",
	evanBalloon01 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon01",
	evanBalloon02 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon02",
	evanBalloon03 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon03",
	evanBalloon04 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon04",
	evanBalloon05 = "Effect/OnUserEff.img/guideEffect/evanTutorial/evanBalloon05",
	evan0 = "UI/tutorial/evan/0/0",
	evan1 = "UI/tutorial/evan/1/0",
	evan2 = "UI/tutorial/evan/2/0",
	evan0 = "UI/tutorial/evan/3/0",
	evan0 = "UI/tutorial/evan/4/0",
	evan0 = "UI/tutorial/evan/5/0",
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
	enter10000 = "maplemap/enter/10000",
	enter20000 = "maplemap/enter/20000",
	enter30000 = "maplemap/enter/30000",
	enter40000 = "maplemap/enter/40000",
	enter50000 = "maplemap/enter/50000",
	enter100000 = "maplemap/enter/100000",
	enter1000000 = "maplemap/enter/1000000",
	enter1010000 = "maplemap/enter/1010000",
	enter1020000 = "maplemap/enter/1020000",
	enter2000000 = "maplemap/enter/2000000",
	enter104000000 = "maplemap/enter/104000000",
}

local reservedEffects = {
	goLithScene = "Effect/Direction3.img/goLith/Scene",
	promotionScene0 = "Effect/Direction4.img/promotion/Scene0",
	promotionScene1 = "Effect/Direction4.img/promotion/Scene1",
	promotionScene2 = "Effect/Direction4.img/promotion/Scene2",
	promotionScene3 = "Effect/Direction4.img/promotion/Scene3",
	meetWithDragonScene = "Effect/Direction4.img/meetWithDragon/Scene",
	child = "Effect/Direction1.img/aranTutorial/Child",
	clickChild = "Effect/Direction1.img/aranTutorial/ClickChild",
}

local squibEffects = {
	goAdventureScene = "Effect/Direction3.img/goAdventure/Scene",
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

function mapEffects.getSquibEffect(key)
    return squibEffects[key]
end

return mapEffects