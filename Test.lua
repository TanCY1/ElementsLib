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
MgO=Element.Compound:new({"Mg","O"})
CO2=Element.Compound:new({"C",{"O",2}})
MgCO3=Element.mergeCompound(MgO,CO2)
print(MgCO3.mass)
-- prints 84.313