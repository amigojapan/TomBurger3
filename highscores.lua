--constarts
debugVersion="       debugVerion 17,"
gridSize=64
moveSpeed = gridSize
timeForMoveInMilliseconds=500
cookingTime=15000
difficulty=1
-- Define grid boundaries
local gridWidth = display.contentWidth
local gridHeight = display.contentHeight
--globals
poops={}
lifePerecentage=100
if difficulty == 1 then
	millisecondsPerHour=60000	
end



--draw tiled backgouod
for x = 1, 	15
do
	for y = 1, 11 
	do
		local myRectangle = display.newRect(x*gridSize, y*gridSize, gridSize, gridSize )
		myRectangle.strokeWidth = 5
		myRectangle:setFillColor( 0.5,0 , 0 )
		myRectangle:setStrokeColor( 0, 0, 0 )
	end
end


--layout kitchen
kitchen ={}
function resizeObjectToGridSize(object,objectName)
	object.width=gridSize
	object.height=gridSize
	object.myName = objectName
	table.insert(kitchen, object)
end

fridgeDoorPatties=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorPatties.width=gridSize
fridgeDoorPatties.height=gridSize
fridgeDoorPatties.x=gridSize*11
fridgeDoorPatties.y=gridSize*10
fridgeDoorPatties.isVisible=false
fridgeDoorPatties.myName = "Fridge Door Patties"
table.insert(kitchen, fridgeDoorPatties)
fridgeDoorPattiesClose1=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorPattiesClose1.width=gridSize
fridgeDoorPattiesClose1.height=gridSize
fridgeDoorPattiesClose1.x=gridSize*11
fridgeDoorPattiesClose1.y=gridSize*9
fridgeDoorPattiesClose1.isVisible=false
fridgeDoorPattiesClose1.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorPattiesClose1)
fridgeDoorPattiesClose2=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorPattiesClose2.width=gridSize
fridgeDoorPattiesClose2.height=gridSize
fridgeDoorPattiesClose2.x=gridSize*10
fridgeDoorPattiesClose2.y=gridSize*10
fridgeDoorPattiesClose2.isVisible=false
fridgeDoorPattiesClose2.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorPattiesClose2)
fridgeDoorPattiesClose3=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorPattiesClose3.width=gridSize
fridgeDoorPattiesClose3.height=gridSize
fridgeDoorPattiesClose3.x=gridSize*12
fridgeDoorPattiesClose3.y=gridSize*10
fridgeDoorPattiesClose3.isVisible=false
fridgeDoorPattiesClose3.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorPattiesClose3)


fridgeDoorFries=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorFries.width=gridSize
fridgeDoorFries.height=gridSize
fridgeDoorFries.x=gridSize*2
fridgeDoorFries.y=gridSize*6
fridgeDoorFries.isVisible=false
fridgeDoorFries.myName = "Fridge Door Fries"
table.insert(kitchen, fridgeDoorFries)
fridgeDoorFriesClose1=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorFriesClose1.width=gridSize
fridgeDoorFriesClose1.height=gridSize
fridgeDoorFriesClose1.x=gridSize*3
fridgeDoorFriesClose1.y=gridSize*6
fridgeDoorFriesClose1.isVisible=false
fridgeDoorFriesClose1.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorFriesClose1)
fridgeDoorFriesClose2=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorFriesClose2.width=gridSize
fridgeDoorFriesClose2.height=gridSize
fridgeDoorFriesClose2.x=gridSize*2
fridgeDoorFriesClose2.y=gridSize*5
fridgeDoorFriesClose2.isVisible=false
fridgeDoorFriesClose2.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorFriesClose2)
fridgeDoorFriesClose3=display.newImage("img/fridgeDoor.png", gridSize*1, gridSize*1,gridSize,gridSize)
fridgeDoorFriesClose3.width=gridSize
fridgeDoorFriesClose3.height=gridSize
fridgeDoorFriesClose3.x=gridSize*2
fridgeDoorFriesClose3.y=gridSize*7
fridgeDoorFriesClose3.isVisible=false
fridgeDoorFriesClose3.myName = "Fridge Door Close"
table.insert(kitchen, fridgeDoorFriesClose3)

block1=display.newImage("img/block.png", gridSize*1, gridSize*1,gridSize,gridSize)
resizeObjectToGridSize(block1,"block"
)

fries_box_1=display.newImage("img/fries_box_fries1.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_1,"Fries box")
fries_box_2=display.newImage("img/fries_box_fries2.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_2,"Fries box")
fries_box_3=display.newImage("img/fries_box_fries3.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_3,"Fries box")
fries_box_4=display.newImage("img/fries_box_fries4.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_4,"Fries box")
fries_box_5=display.newImage("img/fries_box_fries5.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_5,"Fries box")
fries_box_1.isVisible=false
fries_box_2.isVisible=false
fries_box_3.isVisible=false
fries_box_4.isVisible=false
fries_box_5.isVisible=false
fries_box_empty=display.newImage("img/fries_box_empty.png", gridSize*2, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(fries_box_empty,"Fries box")
--add colored fries counters
fryer1_no_tray=display.newImage("img/fryer_no_tray.png", gridSize*2, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(fryer1_no_tray,"Fryer 1")
fryer2_no_tray=display.newImage("img/fryer_no_tray.png", gridSize*2, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(fryer2_no_tray,"Fryer 2")
fryer1_no_tray.isVisible=false
fryer2_no_tray.isVisible=false
fryer1_with_fries=display.newImage("img/fryer_with_fries.png", gridSize*2, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(fryer1_with_fries,"block")
fryer2_with_fries=display.newImage("img/fryer_with_fries.png", gridSize*2, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(fryer2_with_fries,"block")
fryer1_empty=display.newImage("img/fryer_empty.png", gridSize*2, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(fryer1_empty,"Fryer 1")
fryer2_empty=display.newImage("img/fryer_empty.png", gridSize*2, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(fryer2_empty,"Fryer 2")



timer1_on=display.newImage("img/fryer_timer_ready.png", gridSize*1, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(timer1_on,"timer1")
timer1_on.isVisible=false
timer2_on=display.newImage("img/fryer_timer_ready.png", gridSize*1, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(timer2_on,"timer2")
timer1_on.isVisible=false
timer1_off=display.newImage("img/fryer_timer_off.png", gridSize*1, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(timer1_off,"timer1")
timer2_off=display.newImage("img/fryer_timer_off.png", gridSize*1, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(timer2_off,"timer2")

timer1_counter1=display.newImage("img/fryer_timer_counting1.png", gridSize*1, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(timer1_counter1,"timer1")
timer1_counter1.isVisible=false
timer1_counter2=display.newImage("img/fryer_timer_counting2.png", gridSize*1, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(timer1_counter2,"timer2")
timer1_counter2.isVisible=false
timer2_counter1=display.newImage("img/fryer_timer_counting1.png", gridSize*1, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(timer2_counter1,"timer1")
timer2_counter1.isVisible=false
timer2_counter2=display.newImage("img/fryer_timer_counting2.png", gridSize*1, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(timer2_counter2,"timer2")
timer2_counter2.isVisible=false
timer1_state="off"
timer2_state="off"

block2=display.newImage("img/block.png", gridSize*1, gridSize*5,gridSize,gridSize)
resizeObjectToGridSize(block2,"block")
fridge1=display.newImage("img/fridge.png", gridSize*1, gridSize*6,gridSize,gridSize)
resizeObjectToGridSize(fridge1,"Fries fridge")

register=display.newImage("img/register.png", gridSize*6, gridSize*1,gridSize,gridSize)
resizeObjectToGridSize(register,"block")
sekino_frontImg=display.newImage("img/sekino.png", gridSize*6, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(sekino_frontImg,"sekino_front")
sekino_frontImg.isVisible=false


sekino_orderImg=display.newImage("img/sekino_order.png", gridSize*6, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(sekino_orderImg,"sekino_order")
sekino_orderImg.isVisible=true


orders_tray=display.newImage("img/orders_tray.png", gridSize*5, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(orders_tray,"Orders Tray")
orders_spindle=display.newImage("img/orders_spindle.png", gridSize*5, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(orders_spindle,"orders spindle")
--fry scale
fry_scale_100g=display.newImage("img/fry_scale_100g.png", gridSize*5, gridSize*4,gridSize,gridSize)
fry_scale_100g.width=gridSize
fry_scale_100g.height=gridSize
fry_scale_100g.isVisible=false
fry_scale_200g=display.newImage("img/fry_scale_200g.png", gridSize*5, gridSize*4,gridSize,gridSize)
fry_scale_200g.width=gridSize
fry_scale_200g.height=gridSize
fry_scale_200g.isVisible=false
fry_scale_300g=display.newImage("img/fry_scale_300g.png", gridSize*5, gridSize*4,gridSize,gridSize)
fry_scale_300g.width=gridSize
fry_scale_300g.height=gridSize
fry_scale_300g.isVisible=false
fry_scale_no_lid=display.newImage("img/fry_scale_no_lid.png", gridSize*5, gridSize*4,gridSize,gridSize)
fry_scale_no_lid.width=gridSize
fry_scale_no_lid.height=gridSize
fry_scale_no_lid.isVisible=false
fry_scale_empty=display.newImage("img/fry_scale_empty.png", gridSize*5, gridSize*4,gridSize,gridSize)
fry_scale_empty.width=gridSize
fry_scale_empty.height=gridSize
fry_scale_empty.myName = "Fry scale empty"
table.insert(kitchen, fry_scale_empty)



function dresserTablePrepareObj(x,y)
	obj = display.newGroup()
	obj.dresser_table_emptyImg = display.newImageRect(obj, "img/dresser_slot_empty.png", gridSize, gridSize )
	obj.dresser_table_ketchupImg = display.newImageRect(obj, "img/dresser_slot_ketchup.png", gridSize, gridSize )
	obj.dresser_table_mustardImg = display.newImageRect(obj, "img/dresser_slot_mustard.png", gridSize, gridSize )
	obj.dresser_table_buns = display.newImageRect(obj, "img/dresser_slot_buns.png", gridSize, gridSize )
	obj.dresser_table_buns_with_ketchup = display.newImageRect(obj, "img/dresser_slot_buns_ketchup.png", gridSize, gridSize )
	obj.dresser_table_buns_with_mustard = display.newImageRect(obj, "img/dresser_slot__buns_mustard.png", gridSize, gridSize )
	obj.dresser_table_buns_with_pickles = display.newImageRect(obj, "img/dresser_slot_buns_pickles.png", gridSize, gridSize )
	obj.dresser_table_burger = display.newImageRect(obj, "img/dresser_slot_burger.png", gridSize, gridSize )
	obj.dresser_table_cheese_burger = display.newImageRect(obj, "img/dresser_slot_cheeese_burger.png", gridSize, gridSize )
	obj.dresser_table_emptyImg.isVisible=false
	obj.dresser_table_ketchupImg.isVisible=false
	obj.dresser_table_mustardImg.isVisible=false
	obj.dresser_table_buns.isVisible=false
	obj.dresser_table_buns_with_ketchup.isVisible=false
	obj.dresser_table_buns_with_mustard.isVisible=false
	obj.dresser_table_buns_with_pickles.isVisible=false
	obj.dresser_table_burger.isVisible=false
	obj.dresser_table_cheese_burger.isVisible=false
	obj.x = x
	obj.y = y	
	obj.width=gridSize
	obj.height=gridSize
	table.insert(kitchen, obj)
	return obj
end
function griddleSlotPrepareObj(x,y)
	obj = display.newGroup()
	obj.griddle_slot_emptyImg = display.newImageRect(obj, "img/teppan_empty.png", gridSize, gridSize )
	obj.griddle_slot_raw_frame1Img = display.newImageRect(obj, "img/teppan_patty_raw_frame1.png", gridSize, gridSize )
	obj.griddle_slot_raw_frame2Img = display.newImageRect(obj, "img/teppan_patty_raw_frame2.png", gridSize, gridSize )
	obj.griddle_slot_cooked_frame1Img = display.newImageRect(obj, "img/teppan_patty_cooked_frame1.png", gridSize, gridSize )
	obj.griddle_slot_cooked_frame2Img = display.newImageRect(obj, "img/teppan_patty_cooked_frame2.png", gridSize, gridSize )
	obj.griddle_slot_burnt_frame1Img = display.newImageRect(obj, "img/teppan_patty_burnt1.png", gridSize, gridSize )
	obj.griddle_slot_burnt_frame2Img = display.newImageRect(obj, "img/teppan_patty_burnt2.png", gridSize, gridSize )
	obj.griddle_slot_emptyImg.isVisible=true
	obj.griddle_slot_raw_frame1Img.isVisible=false
	obj.griddle_slot_raw_frame2Img.isVisible=false
	obj.griddle_slot_cooked_frame1Img.isVisible=false
	obj.griddle_slot_cooked_frame2Img.isVisible=false
	obj.griddle_slot_burnt_frame1Img.isVisible=false
	obj.griddle_slot_burnt_frame2Img.isVisible=false
	obj.x = x
	obj.y = y	
	obj.width=gridSize
	obj.height=gridSize
	obj.state="empty"
	obj.pattyFlipped=false
	table.insert(kitchen, obj)
	return obj
end

griddle_slot1 = griddleSlotPrepareObj(gridSize*1,gridSize*7)
griddle_slot1.myName = "Griddle slot"
griddle_slot2 = griddleSlotPrepareObj(gridSize*1,gridSize*8)
griddle_slot2.myName = "Griddle slot"
griddle_slot3 = griddleSlotPrepareObj(gridSize*1,gridSize*9)
griddle_slot3.myName = "Griddle slot"
griddle_slot4 = griddleSlotPrepareObj(gridSize*1,gridSize*10)
griddle_slot4.myName = "Griddle slot"


dresser_table1 = dresserTablePrepareObj(gridSize*7,gridSize*4)
dresser_table1.dresser_table_buns.isVisible=false
dresser_table1.dresser_table_mustardImg.isVisible=false
dresser_table1.dresser_table_emptyImg.isVisible=false
dresser_table1.dresser_table_ketchupImg.isVisible=true
dresser_table1.myName = "Dresser Table slot 1"

dresser_table2 = dresserTablePrepareObj(gridSize*8,gridSize*4)
dresser_table2.dresser_table_buns.isVisible=false
dresser_table2.dresser_table_emptyImg.isVisible=false
dresser_table2.dresser_table_ketchupImg.isVisible=false
dresser_table2.dresser_table_mustardImg.isVisible=true
dresser_table2.myName = "Dresser Table slot 2"

dresser_table3 = dresserTablePrepareObj(gridSize*9,gridSize*4)
dresser_table3.dresser_table_buns.isVisible=false
dresser_table3.dresser_table_emptyImg.isVisible=true
dresser_table3.dresser_table_ketchupImg.isVisible=false
dresser_table3.dresser_table_mustardImg.isVisible=false
dresser_table3.myName = "Dresser Table slot 3"
table.insert(kitchen, dresser_table3)

dresser_table4 = dresserTablePrepareObj(gridSize*10,gridSize*4)
dresser_table4.dresser_table_buns.isVisible=false
dresser_table4.dresser_table_emptyImg.isVisible=true
dresser_table4.dresser_table_ketchupImg.isVisible=false
dresser_table4.dresser_table_mustardImg.isVisible=false
dresser_table4.myName = "Dresser Table slot 4"

dresser_table5 = dresserTablePrepareObj(gridSize*11,gridSize*4)
dresser_table5.dresser_table_buns.isVisible=false
dresser_table5.dresser_table_emptyImg.isVisible=true
dresser_table5.dresser_table_ketchupImg.isVisible=false
dresser_table5.dresser_table_mustardImg.isVisible=false
dresser_table5.myName = "Dresser Table slot 5"


pickles_tray=display.newImage("img/pickles_tray.png", gridSize*11, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(pickles_tray,"Pickles tray")
cheese_tray=display.newImage("img/cheese_tray.png", gridSize*10, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(cheese_tray,"Cheese tray")
wrapper_yellow=display.newImage("img/wrapper_yellow.png", gridSize*9, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(wrapper_yellow,"Yellow wrapper tray")
wrapper_red=display.newImage("img/wrapper_red.png", gridSize*8, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(wrapper_red,"Red wrapper tray")
--teppan
--[[
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*7,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*8,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*9,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
teppan_empty=display.newImage("img/teppan_empty.png", gridSize*1, gridSize*10,gridSize,gridSize)
resizeObjectToGridSize(teppan_empty,"teppan_empty")
]]
spatchula_tray_without_spatchula=display.newImage("img/fridge.png", gridSize*1, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(spatchula_tray_without_spatchula,"Spatchula tray with spatchula")
spatchula_tray_without_spatchula.isVisible=false
spatulaTray=display.newImage("img/spatchula_tray_with_spatchula_rotated.png", gridSize*1, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(spatulaTray,"Spatchula tray")

--lower items
fridge2=display.newImage("img/fridge.png", gridSize*11, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(fridge2,"Fridge for Patties")

--toaster_off=display.newImage("img/toaster_off.png", gridSize*8, gridSize*11,gridSize,gridSize)
--resizeObjectToGridSize(toaster_off,"toaster_off")
toaster = display.newGroup()
toaster.toaster_offImg = display.newImageRect( toaster, "img/toaster_off.png", gridSize, gridSize )
toaster.toaster_onImg = display.newImageRect( toaster, "img/toaster_on.png", gridSize, gridSize )
toaster.toaster_offImg.isVisible=true
toaster.toaster_onImg.isVisible=false
toaster.x = gridSize*8
toaster.y = gridSize*11
toaster.width=gridSize
toaster.height=gridSize
toaster.myName = "Toaster"
table.insert(kitchen, toaster)




trash_can=display.newImage("img/trash_can.png", gridSize*6, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(trash_can,"trash_can")
broom=display.newImage("img/broom.png", gridSize*5, gridSize*11,gridSize,gridSize)
resizeObjectToGridSize(broom,"broom")

--local instructions = display.newText( "日本語", 100, 100, "fonts/ume-tgc5.ttf", 100 )

-- Image fills that will be used for enterFrame animations for the knight.
--local tomImg = { type = "image", filename = "img/Tom.png" }
--local pipeImg = { type = "image", filename = "img/pipe.png" }

-- Declaring multiple similar variables on the same line to reduce repetition.
local movementDirection, state1 = "right", true
-- The knight's start/previous x location, as well as movement speed, jump height and jump duration.
--prevX = gridSize


--local tomGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.
--local pipeGroup = display.newGroup() -- By adding the knight and his shadow to a group, we can handle both at the same time.


--local tom = display.newRect( tomGroup, prevX, gridSize, gridSize, gridSize )
rat=display.newImage("img/rat_frame1.png", gridSize*13, gridSize*2,gridSize,gridSize)
rat.width=gridSize
rat.height=gridSize
rat.myName = "rat"
rat.InMotion=false

speech_bubbleImg=display.newImage("img/speech_bubble.png", gridSize*8, gridSize*2.7,gridSize,gridSize)
speech_bubbleImg.width=speech_bubbleImg.width*1.5
speech_bubbleImg.height=speech_bubbleImg.height*1.5
textOffsetX=gridSize*8
textOffsetY=64*2.3
local orderLabelLine1 = display.newText( "ハンバーガー：２個", textOffsetX , textOffsetY, "fonts/ume-tgc5.ttf", 20 )
textOffsetY=textOffsetY+20
local orderLabelLine2 = display.newText( "チーズバーガー：１個",  textOffsetX, textOffsetY, "fonts/ume-tgc5.ttf", 20 )
textOffsetY=textOffsetY+20
local orderLabelLine3 = display.newText( "ポテトフライ：３個",  textOffsetX, textOffsetY, "fonts/ume-tgc5.ttf", 20 )
orderLabelLine1:setTextColor( 0, 0, 0 )
orderLabelLine2:setTextColor( 0, 0, 0 )
orderLabelLine3:setTextColor( 0, 0, 0 )
orderLabelLine1.isVisible=false
orderLabelLine2.isVisible=false
orderLabelLine3.isVisible=false


speech_bubbleImg.isVisible=false
sekino_orderImg.isVisible=false
sekino_frontImg.isVisible=true
orders={}
orders.burgers=0
orders.cheeseBurgers=0
orders.frenchFries=0

local orderHideTimer
function randomOrder()
	textOffsetX=gridSize*8
	textOffsetY=64*2.3
	if difficulty==1 then
		hamburgerCount=math.random(1,2)
		cheeseBurgerCount=math.random(1,2)
		frenchFryCount=math.random(1,2)
	end
	orders.burgers=orders.burgers+hamburgerCount
	orders.cheeseBurgers=orders.cheeseBurgers+cheeseBurgerCount
	orders.frenchFries=orders.frenchFries+frenchFryCount
	orderLabelLine1.text="ハンバーガー：" .. tostring(hamburgerCount) .. "個"
	orderLabelLine2.text="チーズバーガー：" .. tostring(cheeseBurgerCount) .. "個" 
	orderLabelLine3.text="ポテトフライ：" .. tostring(frenchFryCount) .. "個"
	orderLabelLine1.isVisible=true
	orderLabelLine2.isVisible=true
	orderLabelLine3.isVisible=true
	speech_bubbleImg.isVisible=true
	sekino_orderImg.isVisible=true
	sekino_frontImg.isVisible=false
	
	orderHideTimer = timer.performWithDelay( 5000, hideOrder, 0 )

	if ordersRectangle.isVisible then
		showOrders(nil)
	end

end
function hideOrder()
	orderLabelLine1.isVisible=false
	orderLabelLine2.isVisible=false
	orderLabelLine3.isVisible=false
	speech_bubbleImg.isVisible=false
	sekino_orderImg.isVisible=false
	sekino_frontImg.isVisible=true
	timer.cancel(orderHideTimer)
end



ordersRectangle = display.newRect(gridSize*6, gridSize*6, gridSize*3, gridSize*3 )
textOffsetX=gridSize*6
textOffsetY=gridSize*5.5
local orderSlipLabelLine1 = display.newText( "ハンバーガー：0個", textOffsetX , textOffsetY, "fonts/ume-tgc5.ttf", 20 )
textOffsetY=textOffsetY+20
local orderSlipLabelLine2 = display.newText( "チーズバーガー：0個",  textOffsetX, textOffsetY, "fonts/ume-tgc5.ttf", 20 )
textOffsetY=textOffsetY+20
local orderSlipLabelLine3 = display.newText( "ポテトフライ：0個",  textOffsetX, textOffsetY, "fonts/ume-tgc5.ttf", 20 )
orderSlipLabelLine1:setTextColor( 0, 0, 0 )
orderSlipLabelLine2:setTextColor( 0, 0, 0 )
orderSlipLabelLine3:setTextColor( 0, 0, 0 )

--blocks to hide orders slip
hidebox=display.newImage("img/register.png", gridSize*7, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(hidebox,"hide orders slip box")
hidebox.isVisible=false
hidebox=display.newImage("img/register.png", gridSize*6, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(hidebox,"hide orders slip box")
hidebox.isVisible=false

hidebox=display.newImage("img/register.png", gridSize*4, gridSize*2,gridSize,gridSize)
resizeObjectToGridSize(hidebox,"hide orders slip box")
hidebox.isVisible=false
hidebox=display.newImage("img/register.png", gridSize*3, gridSize*3,gridSize,gridSize)
resizeObjectToGridSize(hidebox,"hide orders slip box")
hidebox.isVisible=false
hidebox=display.newImage("img/register.png", gridSize*4, gridSize*4,gridSize,gridSize)
resizeObjectToGridSize(hidebox,"hide orders slip box")
hidebox.isVisible=false

function hideOrderSlip()
	ordersRectangle.isVisible=false
	orderSlipLabelLine1.isVisible=false
	orderSlipLabelLine2.isVisible=false
	orderSlipLabelLine3.isVisible=false
end

hideOrderSlip()


tom = display.newGroup()
--tom=display.newImage("img/Tom.png", gridSize*10, gridSize*10,gridSize,gridSize)
tomImg = display.newImageRect( tom, "img/Tom.png", gridSize, gridSize )
tomWithPicklesImg = display.newImageRect( tom, "img/tom_with_pickles.png", gridSize, gridSize )
tomWithPicklesImg.isVisible=false
tomWithCheeseImg = display.newImageRect( tom, "img/tom_with_cheese.png", gridSize, gridSize )
tomWithCheeseImg.isVisible=false
tomWithRedWrapperImg = display.newImageRect( tom, "img/tom_with_red_wrapper.png", gridSize, gridSize )
tomWithRedWrapperImg.isVisible=false
tomWithYellowWrapperImg = display.newImageRect( tom, "img/tom_with_yellow_wrapper.png", gridSize, gridSize )
tomWithYellowWrapperImg.isVisible=false
tomWithBurgerImg = display.newImageRect( tom, "img/tom_with_burger.png", gridSize, gridSize )
tomWithBurgerImg.isVisible=false
tomWithCheeseBurgerImg = display.newImageRect( tom, "img/tom_with_cheese_burger.png", gridSize, gridSize )
tomWithCheeseBurgerImg.isVisible=false
tomWithBroomImg = display.newImageRect( tom, "img/Tom_with_broom_frame1.png", gridSize, gridSize )
tomWithBroomImg.isVisible=false
tomWithKetchupImg = display.newImageRect( tom, "img/tom_with_ketchup.png", gridSize, gridSize )
tomWithKetchupImg.isVisible=false
tomWithMustardImg = display.newImageRect( tom, "img/tom_with_mustard.png", gridSize, gridSize )
tomWithMustardImg.isVisible=false
tomWaitingBunsImg = display.newImageRect( tom, "img/tom_wating_buns.png", gridSize, gridSize )
tomWaitingBunsImg.isVisible=false
tomWithBunsImg = display.newImageRect( tom, "img/tom_with_buns.png", gridSize, gridSize )
tomWithBunsImg.isVisible=false
tomWithPattyImg = display.newImageRect( tom, "img/tom_with_patty.png", gridSize, gridSize )
tomWithPattyImg.isVisible=false
tomWithSpatula=false
tomWithSpatulaLeftImg = display.newImageRect( tom, "img/tom_with_spatula_left.png", gridSize, gridSize )
tomWithSpatulaLeftImg.isVisible=false
tomWithSpatulaCookedPatty=false
tomWithSpatulaCookedPattyLeftImg = display.newImageRect( tom, "img/tom_with_spatula_cooked_patty_left.png", gridSize, gridSize )
tomWithSpatulaCookedPattyLeftImg.isVisible=false
tomWithWrappedBurgerImg = display.newImageRect( tom, "img/tom_with_burger.png", gridSize, gridSize )
tomWithWrappedBurgerImg.isVisible=false
tomWithWrappedCheeseBurgerImg = display.newImageRect( tom, "img/tom_with_cheese_burger.png", gridSize, gridSize )
tomWithWrappedCheeseBurgerImg.isVisible=false
tomWithFriesBagImg = display.newImageRect( tom, "img/tom_with_bag.png", gridSize, gridSize )
tomWithFriesBagImg.isVisible=false
tomWithFriesMesuringCupWithFriesImg = display.newImageRect( tom, "img/tom_with_mesuring_bowl_with_fries.png", gridSize, gridSize )
tomWithFriesMesuringCupWithFriesImg.isVisible=false
tomWithFriesMesuringCupWithoughtFriesImg = display.newImageRect( tom, "img/tom_with_mesuring_bowl.png", gridSize, gridSize )
tomWithFriesMesuringCupWithoughtFriesImg.isVisible=false
tomWithFriesBasketFullImg = display.newImageRect( tom, "img/tom_with_fryer_spool_and_fries_left.png", gridSize, gridSize )
tomWithFriesBasketFullImg.isVisible=false
tomWithFriesBasketEmptyImg = display.newImageRect( tom, "img/tom_with_fryer_spool_withought_fries_left.png", gridSize, gridSize )
tomWithFriesBasketEmptyImg.isVisible=false
tom.x = gridSize*10
tom.y = gridSize*10
tom.width=gridSize
tom.height=gridSize
tom.myName = "tom"
tom.InMotion=false
tom.holdingBroom=false
tom.waitingToGrabAgain=false
--local pipe = display.newRect( pipeGroup, 400, 400, 200, 200 )
pipe=display.newImage("img/pipe.png", 200, 200)
pipe.isVisible = false
--pipe.fill = pipeImg
pipe.myName = "pipe"
--handle collision
  
local col = display.newText( debugVersion .. "collision:false",  gridSize*2, gridSize*2, "fonts/ume-tgc5.ttf", 40 )
--col.text="hey"

function findSpriteInTable(spritesTable,id)
	for _,v in pairs(spritesTable) do
		if v.myName == id then
			-- do something
			return v
		end
	end
end

-- Function to handle collision with kitchen items

local returnTimer
function grabTimerEnd()
	tom.waitingToGrabAgain=false
	if(returnTimer) then
		timer.cancel( returnTimer )
	end
end
function endToasting()
	tom.waitingToGrabAgain=false
	--tom.InMotion=false --put tom back in motion after toasting
	if(returnTimer) then
		timer.cancel( returnTimer )
	end
	print("Toasting ended")
	audio.play(readySoundEffect)
	toaster.toaster_onImg.isVisible=false
	toaster.toaster_offImg.isVisible=true
	tomWaitingBunsImg.isVisible=false
	tomWithBunsImg.isVisible=true
end
function ketchupGrab(sprite)
	if  tomImg.isVisible and sprite.dresser_table_ketchupImg.isVisible  and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Grabbed Ketchup")
		tomImg.isVisible = false
		tomWithKetchupImg.isVisible=true
		sprite.dresser_table_emptyImg.isVisible=true
		sprite.dresser_table_ketchupImg.isVisible=false
	end
end
function wrapAndGrabBurger(sprite)
	if tomWithRedWrapperImg.isVisible and sprite.dresser_table_burger.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Wrapped and grabbed burger")
		tomWithRedWrapperImg.isVisible = false
		tomWithWrappedBurgerImg.isVisible=true
		sprite.dresser_table_emptyImg.isVisible=true
		sprite.dresser_table_burger.isVisible=false
	end
end
function wrapAndGrabCheeseBurger(sprite)
	if tomWithYellowWrapperImg.isVisible and sprite.dresser_table_cheese_burger.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Wrapped and grabbed burger")
		tomWithYellowWrapperImg.isVisible = false
		tomWithWrappedCheeseBurgerImg.isVisible=true
		sprite.dresser_table_emptyImg.isVisible=true
		sprite.dresser_table_cheese_burger.isVisible=false
	end
end
function mustardGrab(sprite)
	if tomImg.isVisible and sprite.dresser_table_mustardImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Grabbed mustard")
		tomImg.isVisible = false
		tomWithMustardImg.isVisible=true
		sprite.dresser_table_emptyImg.isVisible=true
		sprite.dresser_table_mustardImg.isVisible=false
	end
end
function ketchupRetrun(sprite)
	if  sprite.dresser_table_emptyImg.isVisible and tomWithKetchupImg.isVisible and sprite.dresser_table_ketchupImg.isVisible==false and sprite.dresser_table_mustardImg.isVisible==false and tom.holdingBroom==false and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Returned Ketchup")
		tomImg.isVisible = true
		tomWithKetchupImg.isVisible=false
		sprite.dresser_table_emptyImg.isVisible=false
		sprite.dresser_table_ketchupImg.isVisible=true
	end
end
function mustardRetrun(sprite)
	if  sprite.dresser_table_emptyImg.isVisible and tomWithBunsImg.isVisible==false and tomWithMustardImg.isVisible and sprite.dresser_table_mustardImg.isVisible==false and sprite.dresser_table_ketchupImg.isVisible==false and tom.holdingBroom==false and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Returned mustard")
		tomImg.isVisible = true
		tomWithMustardImg.isVisible=false
		sprite.dresser_table_emptyImg.isVisible=false
		sprite.dresser_table_mustardImg.isVisible=true
	end
end
function toast(sprite)
	if  tomWithMustardImg.isVisible==false and toaster.toaster_offImg.isVisible and tomWithKetchupImg.isVisible==false and tom.holdingBroom==false and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.InMotion=true
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 4000, endToasting, 0 )
		print("Toasting")
		tomImg.isVisible = false
		tomWaitingBunsImg.isVisible=true
		toaster.toaster_offImg.isVisible=false
		toaster.toaster_onImg.isVisible=true
	end
end
function putBunsOnTable(sprite)
	--print("sprite.dresser_table_emptyImg.isVisible:"..tostring(sprite.dresser_table_emptyImg.isVisible))
	if  sprite.dresser_table_emptyImg.isVisible and tomImg.isVisible==false and tomWithBunsImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		--fix that you can put buns where mustard adn ketchup are
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Put buns on dressing table")
		tomImg.isVisible = true
		tomWithBunsImg.isVisible=false
		sprite.dresser_table_emptyImg.isVisible=false
		sprite.dresser_table_buns.isVisible=true
	end
end
function putKetchupOnBuns(sprite)
	if  sprite.dresser_table_buns.isVisible and tomWithKetchupImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Put ketchup on buns")
	
		sprite.dresser_table_buns.isVisible=false
		sprite.dresser_table_buns_with_ketchup.isVisible=true
	end
end
function putMustardOnBunsWithKetchup(sprite)
	--print("sprite.dresser_table_emptyImg.isVisible:"..tostring(sprite.dresser_table_emptyImg.isVisible))
	if  sprite.dresser_table_buns_with_ketchup.isVisible and tomWithMustardImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		--fix that you can put buns where mustard adn ketchup are
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Put ketchup on buns")
	
		sprite.dresser_table_buns_with_ketchup.isVisible=false
		sprite.dresser_table_buns_with_mustard.isVisible=true
	end
end
function picklesGrabOrReturn(sprite)
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Piccle grabbed")
		tomImg.isVisible = false
		tomWithPicklesImg.isVisible=true
	end
	if tomWithPicklesImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Pickle returned")
		tomImg.isVisible = true
		tomWithPicklesImg.isVisible=false
	end
end
function putPicklesOnBuns(sprite)
	--print("sprite.dresser_table_emptyImg.isVisible:"..tostring(sprite.dresser_table_emptyImg.isVisible))
	if  sprite.dresser_table_buns_with_mustard.isVisible and tomWithPicklesImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		--fix that you can put buns where mustard and ketchup are
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Put picles on buns")
		tomImg.isVisible = true
		tomWithPicklesImg.isVisible=false
		
		sprite.dresser_table_buns_with_pickles.isVisible=true
		sprite.dresser_table_buns_with_mustard.isVisible=false
	end
end
function pattyGrabOrReturn(sprite)--from patty fridge
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Patty grabbed")
		tomImg.isVisible=false
		tomWithPattyImg.isVisible=true	end
	if tomWithPattyImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Patty returned")
		tomImg.isVisible=true
		tomWithPattyImg.isVisible=false	
	end
end
function pattyGrabFromGriddle(sprite)
	if tomWithSpatulaLeftImg.isVisible and (sprite.state=="cooked" or sprite.state=="burnt") and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		audio.play(grabSoundEffect)
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if sprite.pattyFlipped==false then
			
			print("Patty flipped")
			sprite.state="raw"
			sprite.griddle_slot_cooked_frame1Img.isVisible=false
			sprite.griddle_slot_cooked_frame2Img.isVisible=false
			sprite.griddle_slot_burnt_frame1Img.isVisible=false
			sprite.griddle_slot_burnt_frame2Img.isVisible=false
			sprite.griddle_slot_raw_frame1Img.isVisible=true
			sprite.pattyFlipped=true
		else
			tomWithSpatulaLeftImg.isVisible = false
			tomWithSpatulaCookedPattyLeftImg.isVisible=true
			sprite.state="empty"
			sprite.griddle_slot_cooked_frame1Img.isVisible=false
			sprite.griddle_slot_cooked_frame2Img.isVisible=false
			sprite.griddle_slot_burnt_frame1Img.isVisible=false
			sprite.griddle_slot_burnt_frame2Img.isVisible=false
			sprite.griddle_slot_raw_frame1Img.isVisible=false
			sprite.griddle_slot_raw_frame2Img.isVisible=false
			sprite.griddle_slot_emptyImg.isVisible=true
			sprite.pattyFlipped=false
		end
	end
end
function pattyPutOnDresserTable(sprite)
	if  sprite.dresser_table_buns_with_pickles.isVisible and tomWithSpatulaCookedPattyLeftImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Regular burger complete")
		tomWithSpatulaLeftImg.isVisible=true
		tomWithSpatulaCookedPattyLeftImg.isVisible=false
		sprite.dresser_table_buns_with_pickles.isVisible=false
		sprite.dresser_table_burger.isVisible=true
	end
end
function putCheeseOnBuns(sprite)
	if sprite.dresser_table_burger.isVisible and tomWithCheeseImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Cheese grabbed")
		tomImg.isVisible = true
		tomWithCheeseImg.isVisible=false
		sprite.dresser_table_burger.isVisible=false
		sprite.dresser_table_cheese_burger.isVisible=true
	end
end
function cheeseGrabOrReturn(sprite)
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Piccle grabbed")
		tomImg.isVisible = false
		tomWithCheeseImg.isVisible=true
	end
	if tomWithCheeseImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Pickle returned")
		tomImg.isVisible = true
		tomWithCheeseImg.isVisible=false
	end
end
ordersTray={}
ordersTray.burgersMade=0
ordersTray.cheeseBurgersMade=0
function putBurgerInOrdersTray(sprite)
	if  tomWithWrappedBurgerImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(pointsUpSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("One burger ready!")
		tomImg.isVisible = true
		tomWithWrappedBurgerImg.isVisible=false
		ordersTray.burgersMade=ordersTray.burgersMade+1
	end
end
function putCheeseBurgerInOrdersTray(sprite)
	if  tomWithWrappedCheeseBurgerImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(pointsUpSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("One cheese burger ready!")
		tomImg.isVisible = true
		tomWithWrappedCheeseBurgerImg.isVisible=false
		ordersTray.cheeseBurgersMade=ordersTray.cheeseBurgersMade+1
	end
end
function friesBagGrabOrReturn(sprite)--from fries fridge
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Fries bag grabbed")
		tomImg.isVisible=false
		tomWithFriesBagImg.isVisible=true
	end
	if tomWithFriesBagImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Fries bag returned")
		tomImg.isVisible=true
		tomWithFriesBagImg.isVisible=false	
	end
end
friesMesurignCupAmmount="0G"
function friesMesure(sprite)--from fries fridge
	if tomWithFriesBagImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if fry_scale_empty.isVisible then
			fry_scale_empty.isVisible=false
			fry_scale_100g.isVisible=true
			friesMesurignCupAmmount="100G"
			print("Added fries to scale")
		elseif fry_scale_100g.isVisible then
			fry_scale_100g.isVisible=false
			fry_scale_200g.isVisible=true
			friesMesurignCupAmmount="200G"
			print("Added fries to scale")
		elseif fry_scale_200g.isVisible then
			fry_scale_200g.isVisible=false
			fry_scale_300g.isVisible=true
			friesMesurignCupAmmount="300G"
			print("Added fries to scale")
		end
	end
end
function friesCupGrabOrReturn(sprite)
	--grab
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		audio.play(grabSoundEffect)
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if fry_scale_empty.isVisible then
			fry_scale_no_lid.isVisible=true
			fry_scale_empty.isVisible=false
			tomWithFriesMesuringCupWithoughtFriesImg.isVisible=true
			tomImg.isVisible=false
			print("Took empty cup")
		elseif fry_scale_100g.isVisible then
			fry_scale_no_lid.isVisible=true
			fry_scale_100g.isVisible=false
			tomWithFriesMesuringCupWithFriesImg.isVisible=true
			tomImg.isVisible=false
			print("Took cup 100g")
		elseif fry_scale_200g.isVisible then
			fry_scale_no_lid.isVisible=true
			fry_scale_200g.isVisible=false
			tomWithFriesMesuringCupWithFriesImg.isVisible=true
			tomImg.isVisible=false
			print("Took cup 200g")
		elseif fry_scale_300g.isVisible then
			fry_scale_no_lid.isVisible=true
			fry_scale_300g.isVisible=false
			tomWithFriesMesuringCupWithFriesImg.isVisible=true
			tomImg.isVisible=false
			print("Took cup 300g")
		end
	end
	--return
	if tomWithFriesMesuringCupWithFriesImg.isVisible and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		audio.play(putSoundEffect)
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if fry_scale_no_lid.isVisible then
			if friesMesurignCupAmmount=="100G" then
				fry_scale_no_lid.isVisible=false
				fry_scale_100g.isVisible=true
				tomWithFriesMesuringCupWithFriesImg.isVisible=false
				tomImg.isVisible=true
				print("Returned 100g cup")					
			elseif friesMesurignCupAmmount=="200G" then
				fry_scale_no_lid.isVisible=false
				fry_scale_200g.isVisible=true
				tomWithFriesMesuringCupWithFriesImg.isVisible=false
				tomImg.isVisible=true
				print("Returned 200g cup")					
			elseif friesMesurignCupAmmount=="300G" then
				fry_scale_no_lid.isVisible=false
				fry_scale_300g.isVisible=true
				tomWithFriesMesuringCupWithFriesImg.isVisible=false
				tomImg.isVisible=true
				print("Returned 300g cup")					
			end
		end
	end
	if tomWithFriesMesuringCupWithoughtFriesImg.isVisible and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		audio.play(putSoundEffect)
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if fry_scale_no_lid.isVisible then
			fry_scale_no_lid.isVisible=false
			fry_scale_empty.isVisible=true
			tomWithFriesMesuringCupWithoughtFriesImg.isVisible=false
			tomImg.isVisible=true
			print("Returned empty cup")
		end	
	end
end
fryer1_with_fries_ammount="0G"
fryer2_with_fries_ammount="0G"
local fryer1Timer
local fryer2Timer
function helperPutFriesInFryer(sprite)
	audio.play(cookingSoundEffect)
	tomWithFriesMesuringCupWithFriesImg.isVisible=false
	tomWithFriesMesuringCupWithoughtFriesImg.isVisible=true
	if sprite==fryer1_no_tray then
		print("Hit empty fryer 1")
		fryer1_empty.isVisible=false
		fryer1_with_fries.isVisible=true
		fryer1_with_fries_ammount=friesMesurignCupAmmount
		fryer1Timer=timer.performWithDelay(cookingTime, fryer1DoneEvent, 0 )
		timer1_state="frying"
		print("Fryer 1 frying")
		timer1_off.isVisible=false
		timer1_on.isVisible=false
		timer1_counter1.isVisible=true
	end
	if sprite==fryer2_no_tray then
		print("Hit empty fryer 2")
		fryer2_empty.isVisible=false
		fryer2_with_fries.isVisible=true
		fryer2_with_fries_ammount=friesMesurignCupAmmount
		fryer2Timer=timer.performWithDelay(cookingTime, fryer2DoneEvent, 0 )
		timer2_state="frying"
		print("Fryer 2 frying")
		timer2_off.isVisible=false
		timer2_on.isVisible=false
		timer2_counter1.isVisible=true
	end
	friesMesurignCupAmmount="0G"
end
function friesPutInFryer(sprite)
	if tomWithFriesMesuringCupWithFriesImg.isVisible and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if friesMesurignCupAmmount=="100G" then
			helperPutFriesInFryer(sprite)
			print("Put 100g fries in fryer")					
		elseif friesMesurignCupAmmount=="200G" then
			helperPutFriesInFryer(sprite)
			print("Put 200g fries in fryer")					
		elseif friesMesurignCupAmmount=="300G" then
			helperPutFriesInFryer(sprite)
			print("Put 300g fries in fryer")					
		end
	end
end
friesInHand="0G"
--bug, somewhare in the following code, there is a bug which leaves the basket in the fryer instead of taking it, then you can return the basket even then, not sure what the bug is
function friesTakeAndPutBackFromFryer(sprite)
	if tomWithFriesBasketEmptyImg.isVisible and sprite==fryer1_no_tray  and fryer1_with_fries.isVisible==false then
		audio.play(putSoundEffect)
		print("Returned basket to fryer 1")
		tomWithFriesBasketEmptyImg.isVisible=false
		tomImg.isVisible=true
		fryer1_empty.isVisible=true
		return
	end
	if tomWithFriesBasketEmptyImg.isVisible and sprite==fryer2_no_tray  and fryer2_with_fries.isVisible==false then
		audio.play(putSoundEffect)
		print("Returned basket to fryer 2")
		tomWithFriesBasketEmptyImg.isVisible=false
		tomImg.isVisible=true
		fryer2_empty.isVisible=true
		return
	end
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		tom.waitingToGrabAgain=true
		audio.play(grabSoundEffect)
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if sprite==fryer1_no_tray and timer1_state=="done" and fryer1_with_fries.isVisible then
			fryer1_no_tray.isVisible=true
			fryer1_empty.isVisible=false
			fryer1_with_fries.isVisible=false
			friesInHand=fryer1_with_fries_ammount
			fryer1_with_fries_ammount="0G"
			timer1_state="off"
			print("Took fries basket 1 ".. friesInHand)
			timer1_off.isVisible=true
			timer1_on.isVisible=false
			timer1_counter1.isVisible=false
			timer1_counter2.isVisible=false
			tomImg.isVisible=false
			tomWithFriesBasketFullImg.isVisible=true	
		end
		if sprite==fryer2_no_tray and timer2_state=="done" and fryer2_with_fries.isVisible then
			fryer2_no_tray.isVisible=true
			fryer2_empty.isVisible=false
			fryer2_with_fries.isVisible=false
			friesInHand=fryer2_with_fries_ammount
			fryer2_with_fries_ammount="0G"
			timer2_state="off"
			print("Took fries basket 2 ".. friesInHand)
			timer2_off.isVisible=true
			timer2_on.isVisible=false
			timer2_counter1.isVisible=false
			timer2_counter2.isVisible=false
			tomImg.isVisible=false
			tomWithFriesBasketFullImg.isVisible=true
		end
	end
end
function fryer1DoneEvent()
	if timer1_state=="frying" then 
		timer1_state="done"
		audio.play(readySoundEffect)
		timer1_off.isVisible=false
		timer1_on.isVisible=true
		timer1_counter1.isVisible=false
		timer1_counter2.isVisible=false
	elseif timer1_state=="done" then 
	end
end
function fryer2DoneEvent()
	if timer2_state=="frying" then 
		timer2_state="done"
		audio.play(readySoundEffect)
		timer2_off.isVisible=false
		timer2_on.isVisible=true
		timer2_counter1.isVisible=false
		timer2_counter2.isVisible=false
	elseif timer2_state=="done" then 
	end
end

function cookedEvent1()
	if griddle_slot1.state=="raw" then 
		griddle_slot1.state="cooked"
		griddle_slot1.griddle_slot_raw_frame1Img.isVisible=false
		griddle_slot1.griddle_slot_raw_frame2Img.isVisible=false
		griddle_slot1.griddle_slot_cooked_frame1Img.isVisible=true
	elseif griddle_slot1.state=="cooked" then 
		griddle_slot1.state="burnt"
		griddle_slot1.griddle_slot_cooked_frame1Img.isVisible=false
		griddle_slot1.griddle_slot_cooked_frame2Img.isVisible=false
		griddle_slot1.griddle_slot_burnt_frame1Img.isVisible=true
	end
end
function cookedEvent2()
	if griddle_slot2.state=="raw" then 
		griddle_slot2.state="cooked"
		griddle_slot2.griddle_slot_raw_frame1Img.isVisible=false
		griddle_slot2.griddle_slot_raw_frame2Img.isVisible=false
		griddle_slot2.griddle_slot_cooked_frame1Img.isVisible=true
	elseif griddle_slot2.state=="cooked" then 
		griddle_slot2.state="burnt"
		griddle_slot2.griddle_slot_cooked_frame1Img.isVisible=false
		griddle_slot2.griddle_slot_cooked_frame2Img.isVisible=false
		griddle_slot2.griddle_slot_burnt_frame1Img.isVisible=true
	end
end
function cookedEvent3()
	if griddle_slot3.state=="raw" then 
		griddle_slot3.state="cooked"
		griddle_slot3.griddle_slot_raw_frame1Img.isVisible=false
		griddle_slot3.griddle_slot_raw_frame2Img.isVisible=false
		griddle_slot3.griddle_slot_cooked_frame1Img.isVisible=true
	elseif griddle_slot3.state=="cooked" then 
		griddle_slot3.state="burnt"
		griddle_slot3.griddle_slot_cooked_frame1Img.isVisible=false
		griddle_slot3.griddle_slot_cooked_frame2Img.isVisible=false
		griddle_slot3.griddle_slot_burnt_frame1Img.isVisible=true
	end

end
function cookedEvent4()
	if griddle_slot4.state=="raw" then 
		griddle_slot4.state="cooked"
		griddle_slot4.griddle_slot_raw_frame1Img.isVisible=false
		griddle_slot4.griddle_slot_raw_frame2Img.isVisible=false
		griddle_slot4.griddle_slot_cooked_frame1Img.isVisible=true
	elseif griddle_slot4.state=="cooked" then 
		griddle_slot4.state="burnt"
		griddle_slot4.griddle_slot_cooked_frame1Img.isVisible=false
		griddle_slot4.griddle_slot_cooked_frame2Img.isVisible=false
		griddle_slot4.griddle_slot_burnt_frame1Img.isVisible=true
	end
end
function spatulaGrabOrReturn(sprite)
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Spatula grabbed")
		tomImg.isVisible=false
		tomWithSpatulaLeftImg.isVisible=true
		spatulaTray.isVisible=false
		spatchula_tray_without_spatchula.isVisible=true
	elseif tomWithSpatulaLeftImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Spatula returned")
		tomImg.isVisible=true
		tomWithSpatulaLeftImg.isVisible=false
		spatchula_tray_without_spatchula.isVisible=false
		spatulaTray.isVisible=true
	end
end
function redWrapperGrabOrReturn(sprite)
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Spatula grabbed")
		tomImg.isVisible=false
		tomWithRedWrapperImg.isVisible=true
	elseif tomWithRedWrapperImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Spatula returned")
		tomImg.isVisible=true
		tomWithRedWrapperImg.isVisible=false
	end
end
function yellowWrapperGrabOrReturn(sprite)
	if tomImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(grabSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Yellow wrapper grabbed")
		tomImg.isVisible=false
		tomWithYellowWrapperImg.isVisible=true
	elseif tomWithYellowWrapperImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(putSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Yellow wrapper returned")
		tomImg.isVisible=true
		tomWithYellowWrapperImg.isVisible=false
	end
end

local cookedTimer1
local cookedTimer2
local cookedTimer3
local cookedTimer4
function putPattyOnGriddle(sprite)
	if  sprite.griddle_slot_emptyImg.isVisible and tomImg.isVisible==false and tomWithPattyImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(cookingSoundEffect)
		--(fixed I think)fix that you can put buns where mustard ann ketchup are
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Put patty on griddle")
		tomImg.isVisible = true
		tomWithPattyImg.isVisible=false
		sprite.griddle_slot_emptyImg.isVisible=false
		sprite.griddle_slot_raw_frame1Img.isVisible=true
		sprite.state="raw"
		if sprite==griddle_slot1 then
			cookedTimer1=timer.performWithDelay(cookingTime, cookedEvent1, 0 )
		end
		if sprite==griddle_slot2 then
			cookedTimer2=timer.performWithDelay(cookingTime, cookedEvent2, 0 )
		end
		if sprite==griddle_slot3 then
			cookedTimer3=timer.performWithDelay(cookingTime, cookedEvent3, 0 )
		end
		if sprite==griddle_slot4 then
			cookedTimer4=timer.performWithDelay(cookingTime, cookedEvent4, 0 )
		end
	end
end
function updateFriesBox()
	friesBoxEmptyBox()
	if readyFriesAmmountInGrams >= 500 then
		fries_box_empty.isVisible=false
		fries_box_5.isVisible=true
	elseif readyFriesAmmountInGrams == 400 then
		fries_box_empty.isVisible=false
		fries_box_4.isVisible=true
	elseif readyFriesAmmountInGrams == 300 then
		fries_box_empty.isVisible=false
		fries_box_3.isVisible=true
	elseif readyFriesAmmountInGrams == 200 then
		fries_box_empty.isVisible=false
		fries_box_2.isVisible=true
	elseif readyFriesAmmountInGrams == 100 then
		fries_box_empty.isVisible=false
		fries_box_1.isVisible=true
	elseif readyFriesAmmountInGrams == 0 then
		fries_box_empty.isVisible=true
	end
end
function friesBoxEmptyBox()
	fries_box_empty.isVisible=true
	fries_box_1.isVisible=false
	fries_box_2.isVisible=false
	fries_box_3.isVisible=false
	fries_box_4.isVisible=false
	fries_box_5.isVisible=false
end
readyFriesAmmountInGrams=0
function putFriesInFriesBox(sprite)
	if tomWithFriesBasketFullImg.isVisible and tom.waitingToGrabAgain==false then
		audio.play(pointsUpSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		print("Spatula grabbed")
		tomWithFriesBasketFullImg.isVisible=false
		tomWithFriesBasketEmptyImg.isVisible=true
		if friesInHand=="100G" then
			readyFriesAmmountInGrams=readyFriesAmmountInGrams+100
		elseif friesInHand=="200G" then
			readyFriesAmmountInGrams=readyFriesAmmountInGrams+200
		elseif friesInHand=="300G" then
			readyFriesAmmountInGrams=readyFriesAmmountInGrams+300
		end 
		updateFriesBox()
	end
end

function showOrders(sprite)
	print("Show orders slip")
	ordersRectangle.isVisible=true
	ordersRectangle.strokeWidth = 5
	ordersRectangle:setFillColor( 1, 1 , 1 )
	ordersRectangle:setStrokeColor( 0, 0, 0 )
	hamburgerCount=orders.burgers
	cheeseBurgerCount=orders.cheeseBurgers
	frenchFryCount=orders.frenchFries
	orderSlipLabelLine1.text="ハンバーガー：" .. tostring(hamburgerCount) .. "個"
	orderSlipLabelLine2.text="チーズバーガー：" .. tostring(cheeseBurgerCount) .. "個" 
	orderSlipLabelLine3.text="ポテトフライ：" .. tostring(frenchFryCount) .. "個"
	orderSlipLabelLine1.isVisible=true
	orderSlipLabelLine2.isVisible=true
	orderSlipLabelLine3.isVisible=true
	--set a new random time
	oirderTimeSet()
end
local function handleKitchenCollision(sprite)
	if sprite.myName == "Fridge Door Fries" then
		print("touches")
		fridgeDoorFries.isVisible=true
	end
	if sprite.myName == "Fridge for Patties" then
		pattyGrabOrReturn(sprite)
	end
	if sprite.myName == "Fridge Door Patties" then
		print("touches")
		fridgeDoorPatties.isVisible=true
	end
	if sprite.myName == "Fridge Door Close" then
		print("touches close")
		fridgeDoorPatties.isVisible=false
		fridgeDoorFries.isVisible=false
	end
	if sprite.myName == "Toaster" then
		if tomWithBunsImg.isVisible then
			return -- hack to avoid going thru the toaster with buns
		end
		toast(sprite)
	end	
	if sprite.myName == "broom" then
		if tomImg.isVisible then
			sprite.isVisible = false
			tomImg.isVisible = false -- tom 
			tomWithBroomImg.isVisible = true
			tom.holdingBroom=true
			audio.play(grabSoundEffect)
		end	
	end
	if sprite.myName ==  "trash_can" and tom.waitingToGrabAgain==false then
		--audio.play(pointsUpSoundEffect)
		tom.waitingToGrabAgain=true
		returnTimer = timer.performWithDelay( 500, grabTimerEnd, 0 )
		if tomWithSpatulaCookedPattyLeftImg.isVisible then
			print("tom drops cooked patty in garbage")
			audio.play(putSoundEffect)
			tomWithSpatulaCookedPattyLeftImg.isVisible=false
			tomWithSpatulaLeftImg.isVisible=true
			tomImg.isVisible=false
			return			
		end
		if tomWithBunsImg.isVisible then
			print("tom throws buns in the garbage")
			audio.play(putSoundEffect)
			tomWithBunsImg.isVisible=false
			tomImg.isVisible=true
			return
		end
		if tomWithPattyImg.isVisible then
			print("tom drops raw patty in garbage")
			audio.play(putSoundEffect)
			tomWithPattyImg.isVisible=false
			tomImg.isVisible=true
			return
		end
		print("broom is returned")
		b= findSpriteInTable(kitchen,"broom")
		b.isVisible=true
		tomImg.isVisible = true -- tom 
		tomWithBroomImg.isVisible = false
		tomWithSpatulaCookedPattyLeftImg.isVisible=false
		tomWithBunsImg.isVisible=false
		tomWithPattyImg.isVisible=false
		tom.holdingBroom=false
		audio.play(putSoundEffect)
	end
	print("hit sprite.myName:"..sprite.myName.."tom.waitingToGrabAgain:"..tostring(tom.waitingToGrabAgain))
	if
	sprite.myName ==  "Dresser Table slot 1"
	or
	sprite.myName ==  "Dresser Table slot 2"
	or
	sprite.myName ==  "Dresser Table slot 3"
	or
	sprite.myName ==  "Dresser Table slot 4"
	or
	sprite.myName ==  "Dresser Table slot 5"
	then
		--order is important(in reverse order it seems)
		wrapAndGrabCheeseBurger(sprite)
		wrapAndGrabBurger(sprite)
		putCheeseOnBuns(sprite)
		pattyPutOnDresserTable(sprite)
		putPicklesOnBuns(sprite)
		putMustardOnBunsWithKetchup(sprite)
		putKetchupOnBuns(sprite)
		putBunsOnTable(sprite)
		ketchupGrab(sprite)
		ketchupRetrun(sprite)
		mustardGrab(sprite)
		mustardRetrun(sprite)
	end
	if sprite.myName == "Orders Tray" then
		putBurgerInOrdersTray(sprite)
		putCheeseBurgerInOrdersTray(sprite)
	end
	if sprite.myName == "Red wrapper tray" then
		redWrapperGrabOrReturn(sprite)
	end
	if sprite.myName == "Yellow wrapper tray" then
		yellowWrapperGrabOrReturn(sprite)
	end
	if sprite.myName == "Pickles tray" then
		picklesGrabOrReturn(sprite)
	end
	if sprite.myName == "Cheese tray" then
		cheeseGrabOrReturn(sprite)
	end
	if sprite.myName ==  "Griddle slot" then
		putPattyOnGriddle(sprite)
		pattyGrabFromGriddle(sprite)
	end
	if sprite.myName ==  "Spatchula tray" then
		spatulaGrabOrReturn(sprite)
	end
	if sprite.myName ==  "Fries fridge" then
		friesBagGrabOrReturn(sprite)
	end
	if sprite.myName ==  "Fry scale empty" then
		friesMesure(sprite)
		friesCupGrabOrReturn(sprite)
	end
	if sprite.myName ==  "Fryer 1" or sprite.myName ==  "Fryer 2" then
		friesTakeAndPutBackFromFryer(sprite)
		friesPutInFryer(sprite)
		--put basket back in fryer
	end
	if sprite.myName ==  "Fries box" then
		putFriesInFriesBox(sprite)
	end
	if sprite.myName ==  "orders spindle" then
		showOrders(sprite)
	end
	if sprite.myName ==  "hide orders slip box" then
		hideOrderSlip()
	end
end

-- Function to handle collision with poops
local function handlePoopCollision(sprite)
	if sprite.myName == "aPoop" then
		if tomWithBroomImg.isVisible then
			--sprite.destroy()
			if sprite.isVisible then
				audio.play(pointsUpSoundEffect)	
			end		
			sprite.isVisible = false --will need to check for this when reducing tom's life , it must be true
		else
			if sprite.isVisible then
				audio.play(notSoundEffect)
				lifePerecentage=lifePerecentage-10
				if lifePerecentage < 0 then
					lifePerecentage=0
				end	
				if lifePerecentage == 0 then
					--game over
				end
			end
		end
	end
end
	

function onCompletecallback(obj)
	obj.InMotion=false
end

function handleRatCollision(sprite)
	lifePerecentage=lifePerecentage-10
end

function detectColMovingObject(movingObject, sprite)
	if detectCollision(
		movingObject.x - (movingObject.width / 2),
		movingObject.y - (movingObject.height / 2), 
		movingObject.width, movingObject.height,
		sprite.x - (sprite.width / 2),
		sprite.y - (sprite.height / 2),
		sprite.width, sprite.height
	) then
		if movingObject.myName == "tom"  or movingObject.myName == "rat" then
			-- happens when tom moves
			col.text = debugVersion .. "collision:true"
			handleRatCollision(sprite)
		end
		--collided = true
	end
end
function moveInDirection(dx, dy, direction, movingObject)

	if movingObject.myName == "tom" and toaster.toaster_onImg.isVisible==true then
		print("frozen while toasting")
		return
	end
	if movingObject.myName == "tom" then
		--happens when tom moves
		--print(tostring(movingObject.InMotion))

	end
	if movingObject.InMotion then
		return
	end

		
	-- Calculate new position
	local newX = movingObject.x + dx
	local newY = movingObject.y + dy

	-- Check boundaries
	if newX - (movingObject.width / 2) < 0 or newX + (movingObject.width / 2) > gridWidth or newY - (movingObject.height / 2) < 0 or newY + (movingObject.height / 2) > gridHeight then
		return
	end

	movingObject.InMotion = true
	movingObject:translate(dx, dy)
	local collided=false

    for key, sprite in pairs(kitchen) do
        if detectCollision(
                movingObject.x - (movingObject.width / 2),
                movingObject.y - (movingObject.height / 2), 
                movingObject.width, movingObject.height,
                sprite.x - (sprite.width / 2),
                sprite.y - (sprite.height / 2),
                sprite.width, sprite.height
            ) then
            if movingObject.myName == "tom" then
                -- happens when tom moves
                col.text = debugVersion .. "collision:true kitchen object:"..sprite.myName
                handleKitchenCollision(sprite)
				if ((tom.holdingBroom  and  sprite.myName=="broom") or sprite.myName=="Fridge Door Fries" or sprite.myName=="Fridge Door Patties" or sprite.myName=="Fridge Door Close" or sprite.myName=="hide orders slip box") then
					--make kitchen object non solid
					collided=false
					break	
				end
            end
			collided = true
		else
			--fridgeDoorPatties.isVisible=false
        end
    end

    for key, sprite in pairs(poops) do
        if detectCollision(
                movingObject.x - (movingObject.width / 2),
                movingObject.y - (movingObject.height / 2), 
                movingObject.width, movingObject.height,
                sprite.x - (sprite.width / 2),
                sprite.y - (sprite.height / 2),
                sprite.width, sprite.height
            ) then
            if movingObject.myName == "tom" then
                -- happens when tom moves
                col.text = debugVersion .. "collision:true"
                handlePoopCollision(sprite)
            end
			--collided = true
        end
    end


	detectColMovingObject(rat,tom)
    detectColMovingObject(tom,rat)

    if collided then
        movingObject.InMotion = false
    end

	movingObject:translate(-dx, -dy)
	-- If no collision, move movingObject to the new position
	if direction == "left" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, x = movingObject.x - gridSize, onComplete = onCompletecallback})
	elseif direction == "right" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, x = movingObject.x + gridSize, onComplete = onCompletecallback})
	elseif direction == "up" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, y = movingObject.y - gridSize, onComplete = onCompletecallback})
	elseif direction == "down" and not collided then
		transition.to(movingObject, {time = timeForMoveInMilliseconds, y = movingObject.y + gridSize, onComplete = onCompletecallback})
	end	
	collided=false
end

function moveTomLeft()
	moveInDirection( -moveSpeed, 0 , "left", tom )
end

function moveTomRight()
	moveInDirection( moveSpeed, 0, "right", tom )
end

function moveTomUp()
	moveInDirection( 0, -moveSpeed, "up", tom )
end

function moveTomDown()
	moveInDirection( 0, moveSpeed, "down", tom )
end

function moveRatLeft()
	moveInDirection( -moveSpeed, 0 , "left", rat )
end

function moveRatRight()
	moveInDirection( moveSpeed, 0, "right", rat )
end

function moveRatUp()
	moveInDirection( 0, -moveSpeed, "up", rat )
end

function moveRatDown()
	moveInDirection( 0, moveSpeed, "down", rat )
end

--handle keystrokes
local action = {}
function moveCharacter()
	if detectCollision(tom.x-(tom.width/2), tom.y-(tom.height/2), tom.width, tom.height, pipe.x-(pipe.width/2), pipe.y-(pipe.height/2), pipe.width, pipe.height) then
		col.text = debugVersion .. "collision:ture"
	else
		col.text = debugVersion .. "collision:false"
	end
	local keyDown = false
	-- See if one of the selected action buttons is down and move the knight.
	if action["a"] or action["left"] then
		moveTomLeft()
		keyDown = true
	end
	if action["d"] or action["right"] then
		moveTomRight()
		keyDown = true
	end
	if action["w"] or action["up"] then
		moveTomUp()
		keyDown = true
	end
	if action["s"] or action["down"] then
		moveTomDown()
		keyDown = true
	end
end

function onKeyEvent( event )
	if event.phase == "down" then
		action[event.keyName] = true
	else
		action[event.keyName] = false
	end
end

--Runtime:addEventListener( "collision", onLocalCollision )
Runtime:addEventListener( "enterFrame", moveCharacter )
Runtime:addEventListener( "key", onKeyEvent )
function detectCollision(x1, y1, width1, height1, x2, y2, width2, height2) 
    if x1 + width1 > x2 and x1 < x2 + width2 and y1 + height1 > y2 and y1 < y2 + height2 then 
        return true
    else
        return false
    end
end

local fireTimer

function myLeftTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomLeft()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomLeft, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended" or event.phase == "moved" or event.phase == "cancelled") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
offsetx=450
offsety=300

local paint = {
    type = "image",
    filename = "img/arrowLeft.png"
}
local myLeftButton = display.newRect( 300+offsetx, 300+offsety, 100, 100 )
myLeftButton.fill = paint

myLeftButton:addEventListener( "touch", myLeftTouchListener )  -- Add a "touch" listener to the obj

local function myRightTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomRight()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomRight, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended" or event.phase == "moved" or event.phase == "cancelled") then
		timer.cancel( fireTimer )
	end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowRight.png"
}
local myRightButton = display.newRect( 500+offsetx, 300+offsety, 100, 100 )
myRightButton.fill = paint
myRightButton:addEventListener( "touch", myRightTouchListener )  -- Add a "touch" listener to the obj

local function myUpTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomUp()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomUp, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended" or event.phase == "moved" or event.phase == "cancelled") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowUp.png"
}
local myUpButton = display.newRect( 400+offsetx, 200+offsety, 100, 100 )
myUpButton.fill = paint
myUpButton:addEventListener( "touch", myUpTouchListener )  -- Add a "touch" listener to the obj

local function myDownTouchListener( event )
    if ( event.phase == "began" ) then
		moveTomDown()
		fireTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, moveTomDown, 0 )
        print( "object touched = " .. tostring(event.target) )  -- "event.target" is the touched object
	elseif ( event.phase == "ended" or event.phase == "moved" or event.phase == "cancelled") then
		timer.cancel( fireTimer )
    end
    return true  -- Prevents tap/touch propagation to underlying objects
end
local paint = {
    type = "image",
    filename = "img/arrowDown.png"
}
local myDownButton = display.newRect( 400+offsetx, 400+offsety, 100, 100 )
myDownButton.fill = paint
myDownButton:addEventListener( "touch", myDownTouchListener )  -- Add a "touch" listener to the obj


local fireRatTimer
function gameloop()

	--moveRatInRandomDirection
	local direction = math.random(1,4)
	if direction==1 then
		moveRatRight()
	elseif direction==2 then
		moveRatLeft()
	elseif direction==3 then
		moveRatUp()
	elseif direction==4 then
		moveRatDown()
	end
end

fireRatTimer = timer.performWithDelay( timeForMoveInMilliseconds+100, gameloop, 0 )

local orderTimer
function oirderTimeSet()
	if difficulty ==1 then
		orderWaitTime=math.random(50000, 80000)
		--orderWaitTime=25000
	end
	if orderTimer ~= nil then
		timer.cancel(orderTimer)
	end
	--do later, randomize order timming for each order
	orderTimer = timer.performWithDelay( orderWaitTime, randomOrder, 0 )
	print("Waiting " .. orderWaitTime .."for next orders to come in")
end
oirderTimeSet()

textOffsetX=gridSize*13
textOffsetY=gridSize*1
local labelTimeLeft = display.newText( "残り８時間", textOffsetX , textOffsetY, "fonts/ume-tgc5.ttf", 40 )
labelTimeLeft:setTextColor( 1, 1, 0 )
local x=gridSize*11.5
local y=gridSize*1.6
local w=gridSize*3
local h=gridSize/2
local lifeBarRedRectangle = display.newRect(x, y, w, h )
lifeBarRedRectangle:setFillColor(1,0,0)
local lifeBarBlueRectangle = display.newRect(x, y, w, h )
lifeBarBlueRectangle:setFillColor(0,0,1)
lifeBarBlueRectangle.anchorX=0
lifeBarRedRectangle.anchorX=0

--lifeBarRedRectangle.width=w/2
--lifeBarRedRectangle.x=x-w/4
function updateLifeBar()
	lifeBarBlueRectangle.width = w * (lifePerecentage / 100)
end
updateLifeBar()

local hourTimer
hours=8
print(hours .. "H left")
function oneHourOver()
	hours=hours-1
	if hours == 0 then
		print("Workday over!")
		hours=8
	end
	labelTimeLeft.text="残り" .. tostring(hours) .. "時間"
	print(hours .. "H left")
end
hourTimer = timer.performWithDelay( millisecondsPerHour, oneHourOver, 0 ) --one minute per hour
print("Waiting " .. orderWaitTime .."for next orders to come in")


--poop table
local poopTimer
function poop()
	local freeze={}
	freeze.x=rat.x
	freeze.y=rat.y
	audio.play( poopSoundEffect )
	newPoop = display.newGroup()
	newPoop.poop_frame1 = display.newImageRect( newPoop, "img/poop_frame1.png", gridSize, gridSize )
	newPoop.poop_frame2 = display.newImageRect( newPoop, "img/poop_frame2.png", gridSize, gridSize )
	newPoop.poop_frame2.isVisible=false
	newPoop.x = freeze.x
	newPoop.y = freeze.y
	newPoop.width=gridSize
	newPoop.height=gridSize
	newPoop.myName = "aPoop"
	table.insert(poops, newPoop)
end

poopTimer = timer.performWithDelay( 50000, poop, 0 )

local animationLoopTimer

function animateFryerTimers()
	if timer1_state=="frying" then
		print("animation fyring")
		if timer1_counter1.isVisible then
			print("fyrer1 counter1")
			timer1_counter1.isVisible=false
			timer1_counter2.isVisible=true
		else
			print("fyrer1 counter2")
			timer1_counter1.isVisible=true
			timer1_counter2.isVisible=false
		end
	elseif	timer1_state=="done" then
		if timer1_on.isVisible then
			print("Fryer 1 flashin off")
			timer1_on.isVisible=false
			timer1_off.isVisible=true
		else
			print("Fryer 1 flashin on")
			timer1_on.isVisible=true
			timer1_off.isVisible=false
		end
	end
	if timer2_state=="frying" then
		if timer2_counter1.isVisible then
			timer2_counter1.isVisible=false
			timer2_counter2.isVisible=true
		else
			timer2_counter1.isVisible=true
			timer2_counter2.isVisible=false
		end
	elseif	timer2_state=="done" then
		if timer2_on.isVisible then
			timer2_on.isVisible=false
			timer2_off.isVisible=true
		else
			timer2_on.isVisible=true
			timer2_off.isVisible=false
		end
	end
end
function animateGriddle(obj)
	if obj.state=="raw"	then
		if obj.griddle_slot_raw_frame1Img.isVisible then
			obj.griddle_slot_raw_frame1Img.isVisible=false
			obj.griddle_slot_raw_frame2Img.isVisible=true
		else
			obj.griddle_slot_raw_frame1Img.isVisible=true
			obj.griddle_slot_raw_frame2Img.isVisible=false				
		end
	elseif	obj.state=="cooked"	then
		if obj.griddle_slot_cooked_frame1Img.isVisible then
			obj.griddle_slot_cooked_frame1Img.isVisible=false
			obj.griddle_slot_cooked_frame2Img.isVisible=true
		else
			obj.griddle_slot_cooked_frame1Img.isVisible=true
			obj.griddle_slot_cooked_frame2Img.isVisible=false				
		end
	elseif	obj.state=="burnt"	then
		if obj.griddle_slot_burnt_frame1Img.isVisible then
			obj.griddle_slot_burnt_frame1Img.isVisible=false
			obj.griddle_slot_burnt_frame2Img.isVisible=true
		else
			obj.griddle_slot_burnt_frame1Img.isVisible=true
			obj.griddle_slot_burnt_frame2Img.isVisible=false				
		end
	end
end

function animationLoop()
	updateLifeBar()
	animateFryerTimers()
	animateGriddle(griddle_slot1)
	animateGriddle(griddle_slot2)
	animateGriddle(griddle_slot3)
	animateGriddle(griddle_slot4)
	for key, sprite in pairs(poops) do
		if(sprite.isVisible) then
			if(sprite.poop_frame1.isVisible) then
				sprite.poop_frame1.isVisible=false
				sprite.poop_frame2.isVisible=true
			else
				sprite.poop_frame1.isVisible=true
				sprite.poop_frame2.isVisible=false				
			end
		end
	end
end
animationLoopTimer = timer.performWithDelay( 200, animationLoop, 0 )


audio.reserveChannels( 1 )
-- Reduce the overall volume of the channel
audio.setVolume( 1, { channel=1 } )


-- Load audio
musicTrack = audio.loadStream( "audio/Tom.wav",system.ResourceDirectory)


-- Play the background music on channel 1, loop infinitely 
audio.play( musicTrack, { channel=1, loops=-1 } )

--sound effects load
poopSoundEffect = audio.loadStream( "audio/popo.wav",system.ResourceDirectory)
putSoundEffect = audio.loadStream( "audio/drop1.wav",system.ResourceDirectory)
grabSoundEffect = audio.loadStream( "audio/Grab-object.wav",system.ResourceDirectory)
notSoundEffect = audio.loadStream( "audio/not.wav",system.ResourceDirectory)
pointsUpSoundEffect = audio.loadStream( "audio/glissando.wav",system.ResourceDirectory)
startUpSoundEffect = audio.loadStream( "audio/Start.wav",system.ResourceDirectory)
cookingSoundEffect = audio.loadStream( "audio/frying.wav",system.ResourceDirectory)
readySoundEffect = audio.loadStream( "audio/ready.wav",system.ResourceDirectory)

audio.play(startUpSoundEffect)


--(done)
--amigojapan> Zcom: primero muevo el esprite sobre el otro 
--objecto(sin mostrarlo) luego si hay collision, consigo el 
--ID del otro objecto, y al final regreso a tom a suposicion 
--origuinal

--(fixed)why is there kokizami motion?
--(fixed)impede Tom from having many moves at once which takes him
--out of teh grid

--(done)block Tom from going out of the play area

--(fixed(you cant put a parameter in the oncomplete function in the --transition function, this was causing the obscure bug)
--keep tom (?and rat) inside grid area

--(done)make the rat and tom have sepperate moving  variables so they can move seperately

--(done)make tom take the broom

--((bug was not fixed on touchscreens)fixed(I think(need to test on touchscreen))handle the onbutton move event, it gets stuck now if you
--move your finger during touch


--add all sprites to a group so tom can be at the top of the group
--all the time

--I finished all the playable objects of the game, 
--now all that is left if making the other things like 
--the random orders
--and difficulty levels
--and a timeout
--and a life bar
--Main menu?
--score chart
--also complete these details:
--you may get rid of some items you are holding by throwing them in the trash can
--bug, cant throw away a patty
--bug, seems there is still problems in the touch controls where tom gets stuck moving in a direction