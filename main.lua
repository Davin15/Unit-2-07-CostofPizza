-----------------------------------------------------------------------------------------
--
-- how to calculate the cost of a pizza
-- Made by Davin Rousseau
-- Made on Feb.21st/2019
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0, 255/255, 0 )

local RadOfPizzaTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 100, 50 )
RadOfPizzaTextField.id = "Radius textField"

local CostOfPizzaTextField = display.newText( "The Cost Of The Pizza Is", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
CostOfPizzaTextField.id = "cost textField"
CostOfPizzaTextField:setFillColor( 0, 0, 255/255 )

local myText = display.newText( "Diameter Of Pizza", 160, 350, native.systemFont, 14 )
myText:setFillColor( 1, 0, 0 )

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

local calculateButton = display.newImageRect( "Assets/calculate-button-hi.png", 150, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    
 
    local RadOfPizza
    local CostOfPizza
 
    RadOfPizza = RadOfPizzaTextField.text
    CostOfPizza = ((RadOfPizza * 2)* 0.5 + 1.75)*1.13
    -- print( areaOfSquare )
    CostOfPizzaTextField.text = "The Cost Of The Pizza Is " .. round(CostOfPizza,2)

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )