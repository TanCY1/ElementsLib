# ElementsLib

---
This is a lua module to use the Periodic Table

## Usage

|Method                |Description|
| ------------------- |  ---------------------------------------------------- |
|locate(I,W,O)| I: Type of element to be searched </br> W: Element to be searched </br> O: Property to return|
|table|List of all elements in the periodic table and their attributes|
|mass(...)|Accepts any number of tables with the first value being Symbol of Element and the second being the number of particles|
|Compound:new(t)|Makes new Compound. </br> t is a table contaning tables in the format of {Element=Number of Elements}|
|Compound.mass|Mass of Compound|
|Compound:percentageByMass(Element)|Returns percentage by mass |
|Compund:getAmount(args)|parameter return specifies property to return grams or moles and other parameter is given property|
|mergeCompound(...)|Merges any number of Compounds into 1 Compound|

## Example

```lua
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
```
