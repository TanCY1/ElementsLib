--Example
local Elements=require("Elements")
--prints the symbol for Silver
print(Elements.locate("Name","Silver","Symbol"))
-- returns Ag
print(Elements.mass({"H",2},{"O"}))
-- prints 18.015
water=Elements.Compound:new{{"H",2},{"O"}}
-- makes new compound
print(water.mass)
-- prints 18.015
print(water:percentageByMass("H"))
-- prints 0.11190674437968
print(water:getAmount{grams="36.03",returnValue="moles"})
-- prints 2.0
MgO=Elements.Compound:new{"Mg","O"}
CO2=Elements.Compound:new({"C",{"O",2}})
MgCO3=Elements.mergeCompound(MgO,CO2)
print(MgCO3.mass)
-- prints 84.313
MgCO3=MgO:merge(CO2)
print(MgCO3.mass)
-- prints 84.313
Nicotine=Elements.Compound:new{{"C",10},{"H",14},{"N",2}}
print(Nicotine:ef())
-- returns table in the form {{"C",5},{"H",7},{"N",1}}