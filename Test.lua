--Example
local Element=require("Elements")
--prints the symbol for Silver
print(Element.locate("Name","Silver","Symbol"))
-- returns Ag
print(Element.mass({"H",2},{"O"}))
-- prints 18.015
water=Element.Compound:new({{"H",2},{"O"}})
-- makes new compound
print(water.mass)
-- prints 18.015
print(water:percentageByMass("H"))
-- prints 0.11190674437968
print(water:getAmount{grams="36.03",returnValue="moles"})
-- prints 2.0