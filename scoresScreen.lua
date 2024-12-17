
require("i18n_dict")
require("writeScores")
local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoMenu()
	composer.gotoScene( "menu" )
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
	offsetY=200
	offsetX=200
	local lableTotalPoints = display.newText( sceneGroup, "Easy" , offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	lines=getScoreTable(1)
	for k,v in pairs(lines) do
		offsetX=offsetX+55
		display.newText( sceneGroup, v  , offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	    print('line[' .. k .. '] offsetX:'..offsetX.."offsetY:"..offsetY, v)
	end
	offsetY=500
	offsetX=200
	lines=getScoreTable(2)
	local lableTotalPoints = display.newText( sceneGroup, "Medium", offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	for k,v in pairs(lines) do
		offsetX=offsetX+55
		local lableTotalPoints = display.newText( sceneGroup, v  , offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	    print('line[' .. k .. ']', v)
	end
	offsetY=800
	offsetX=200
	lines=getScoreTable(3)
	local lableTotalPoints = display.newText( sceneGroup, "Hard" , offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	for k,v in pairs(lines) do
		offsetX=offsetX+55
		local lableTotalPoints = display.newText( sceneGroup, v  , offsetY, offsetX, "fonts/ume-tgc5.ttf", 50 )
	    print('line[' .. k .. ']', v)
	end
	local playButton = display.newText( sceneGroup, "<<", 300, 50, "fonts/ume-tgc5.ttf", 44 )
	playButton:setFillColor( 0.82, 0.86, 1 )
	playButton:addEventListener( "tap", gotoMenu )
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
