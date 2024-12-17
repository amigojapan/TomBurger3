
require("i18n_dict")
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoGame()
	print("goto game screen")
	composer.removeScene( "game" )
	composer.gotoScene( "game" )
end

local function gotoGameOver()
	print("goto GAME OVER screen")
	composer.removeScene( "game" )
	composer.gotoScene( "GameOver" )
end


local function gotoHighScores()
	composer.gotoScene( "highscores" )
end


-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function updateScene(sceneGroup)
	local background = display.newImageRect( sceneGroup, "backgrounds/background.png", 1400,800 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY
	ordersRectangle = display.newRect(sceneGroup,display.contentCenterX, display.contentCenterY, 1000-100, 800-50 )
	ordersRectangle.strokeWidth = 5
	ordersRectangle:setFillColor( 0, 0 , 0, 0.5 )
	ordersRectangle:setStrokeColor( 1, 0, 0 )
	language=composer.getVariable( "language" )
	print("language:"..language)
	translate=i18n_setlang(language)
	local burgersMade = composer.getVariable( "burgersMade" )
	local cheeseBurgersMade = composer.getVariable( "cheeseBurgersMade" )
	local frenchFriesMade = composer.getVariable( "frenchFriesMade" )
	local ordersBurgers = composer.getVariable( "ordersBurgers" )
	local ordersCheeseBurgers = composer.getVariable( "ordersCheeseBurgers" )
	local ordersFrenchFries = composer.getVariable( "ordersFrenchFries" )
	local cleanlynessPoints = composer.getVariable( "cleanlynessPoints" )
	totalPoints=0
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	offsetY=100
	--**burgers
	pointsPerCompletedOrder=80
	negaitvePointsPerWaste=30
	negaitvePointsPerIncompleteOrder=30
	bonusForPerfectBalance=500
	Points=burgersMade * pointsPerCompletedOrder
	local lableBurgersMade = display.newText( sceneGroup, translate["Made Hamburgers"] .. burgersMade .. "✔" .. tostring(Points) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableBurgersMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableOrdersBurgers = display.newText( sceneGroup, translate["Odered Hamburgers"] .. ordersBurgers , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableOrdersBurgers:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersBurgers < burgersMade then
		wastePoints=(ordersBurgers - burgersMade)*negaitvePointsPerWaste
		local lableWastedHamburgers = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedHamburgers:setTextColor( 1, 0, 0 )
	elseif ordersBurgers > burgersMade then
		inclmpleteOderPoints=(burgersMade - ordersBurgers)*negaitvePointsPerIncompleteOrder
		local lableIncompleteOrders = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrders:setTextColor( 1, 0, 0 )
	else
		bonus=500--for perfect balance
		local lablePerfectBalanceBonus = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonus:setTextColor( 1, 1, 0 )
	end
	totalPoints=Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	--**Cheeseburgers
	pointsPerCompletedOrder=100
	negaitvePointsPerWaste=20
	negaitvePointsPerIncompleteOrder=30
	bonusForPerfectBalance=500
	offsetY=offsetY+55
	local lableCheeseBurgersMade = display.newText( sceneGroup, translate["Made Cheeseburgers"] .. cheeseBurgersMade .. "✔" .. tostring(cheeseBurgersMade * pointsPerCompletedOrder) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableCheeseBurgersMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableOrdersCheeseBurgers = display.newText( sceneGroup, translate["Odered Cheeseburgers"] .. ordersCheeseBurgers , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableOrdersCheeseBurgers:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersCheeseBurgers < cheeseBurgersMade then
		wastePoints=(ordersCheeseBurgers - cheeseBurgersMade)*negaitvePointsPerWaste
		local lableWastedCheeseBurgers = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedCheeseBurgers:setTextColor( 1, 0, 0 )
	elseif ordersCheeseBurgers > cheeseBurgersMade then
		inclmpleteOderPoints=(cheeseBurgersMade - ordersCheeseBurgers)*negaitvePointsPerIncompleteOrder
		local lableIncompleteOrdersCB = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrdersCB:setTextColor( 1, 0, 0 )
	else
		bonus=bonusForPerfectBalance
		local lablePerfectBalanceBonusCB = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonusCB:setTextColor( 1, 1, 0 )
	end
	totalPoints=totalPoints+Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	--**frenchFries
	pointsPerCompletedOrder=50
	negaitvePointsPerWaste=10
	negaitvePointsPerIncompleteOrder=10
	bonusForPerfectBalance=500

	offsetY=offsetY+55
	local lableFrenchFriesMade = display.newText( sceneGroup, translate["Made Frenchfries"] .. frenchFriesMade .. "✔" .. tostring(frenchFriesMade * pointsPerCompletedOrder) .. "pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableFrenchFriesMade:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	local lableordersFrenchFries = display.newText( sceneGroup, translate["Odered Frenchfries"] .. ordersFrenchFries , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	lableordersFrenchFries:setTextColor( 1, 1, 0 )
	offsetY=offsetY+55
	if ordersFrenchFries < frenchFriesMade then
		wastePoints=(ordersFrenchFries - frenchFriesMade)*negaitvePointsPerWaste
		local lableWastedFF = display.newText( sceneGroup, translate["Waste"] .. tostring(wastePoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableWastedFF:setTextColor( 1, 0, 0 )
	elseif ordersFrenchFries > frenchFriesMade then
		inclmpleteOderPoints=(frenchFriesMade - ordersFrenchFries)*negaitvePointsPerIncompleteOrder
		local lableIncompleteOrdersFF = display.newText( sceneGroup, translate["Incomplete Orders"] .. tostring(inclmpleteOderPoints).."pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lableIncompleteOrdersFF:setTextColor( 1, 0, 0 )
	else
		bonus=bonusForPerfectBalance
		local lablePerfectBalanceBonusFF = display.newText( sceneGroup, translate["Perfect Balance Bonus"] .. "500pt" , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
		lablePerfectBalanceBonusFF:setTextColor( 1, 1, 0 )
	end
	totalPoints=totalPoints+Points+wastePoints+inclmpleteOderPoints+bonus
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	offsetY=offsetY+50
	local lableTotalPoints = display.newText( sceneGroup, translate["Cleanlyness"] .. tostring(cleanlynessPoints) , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 50 )
	if cleanlynessPoints > 0 then
		lableTotalPoints:setTextColor( 1, 1, 0 )
	else
		lableTotalPoints:setTextColor( 1, 0, 0 )
	end
	totalPoints=totalPoints+cleanlynessPoints
	Points=0
	wastePoints=0
	inclmpleteOderPoints=0
	bonus=0
	
	offsetY=offsetY+55
	local lableTotalPoints = display.newText( sceneGroup, "今回ポイント：" .. tostring(totalPoints) , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 45 )
	if totalPoints > 0 then
		lableTotalPoints:setTextColor( 1, 1, 0 )
	else
		lableTotalPoints:setTextColor( 1, 0, 0 )
	end
	local totalPointsFinal = composer.getVariable( "totalPointsFinal" )
	if totalPointsFinal==nil then
		totalPointsFinal=totalPoints
	else
		totalPointsFinal=totalPointsFinal+totalPoints
	end
	composer.setVariable( "totalPointsFinal", totalPointsFinal )
	offsetY=offsetY+55
	local lableTotalPoints = display.newText( sceneGroup, "トータルポイント：" .. tostring(totalPointsFinal) , display.contentCenterX, offsetY, "fonts/ume-tgc5.ttf", 45 )
	if totalPoints > 0 then
		lableTotalPoints:setTextColor( 1, 1, 0 )
	else
		lableTotalPoints:setTextColor( 1, 0, 0 )
	end

	--translate=i18n_setlang("English")
--translate=i18n_setlang("Spanish")
--print(translate["hw"])
--print(translate["gw"])
--translate=i18n_setlang("Japanese")
--print(translate["hw"])
--print(translate["gw"])
	local gameIsOver = composer.getVariable( "gameIsOver" )
	if gameIsOver then
		local playButton = display.newText( sceneGroup, "Quit", 100, 100, "fonts/ume-tgc5.ttf", 44 )
		playButton:setFillColor( 0.82, 0.86, 1 )
		playButton:addEventListener( "tap", gotoGameOver )	
	else
		local playButton = display.newText( sceneGroup, "Continue", 100, 100, "fonts/ume-tgc5.ttf", 44 )
		playButton:setFillColor( 0.82, 0.86, 1 )
		playButton:addEventListener( "tap", gotoGame )

		local 	quitButton = display.newText( sceneGroup, "Quit", 300, 100, "fonts/ume-tgc5.ttf", 44 )
		quitButton:setFillColor( 0.82, 0.86, 1 )
		quitButton:addEventListener( "tap", gotoGameOver )	

	end
end
function scene:create( event )
	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	
end


-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)
		
	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen
		print("Removed scene")
		composer.removeScene( "game" )
		updateScene(sceneGroup)
	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end

-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
