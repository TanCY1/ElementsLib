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
|mergeCompound(...)|Merges any number of Compounds and returns 1 Compound|
|Compound:merge(Compound)|Merges self with a compound then returns it|
|Compound:ef()|Returns empirical formula of compound|
|idealgaslaw(args)|Table with values for temperature in kelvin, pressure in pascals, volume in cubic metres and amount of substance in mols</br>Output can be any of these values|

## Example

```lua
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
print(Elements.idealgaslaw{mols=1,temperature="273.15",pressure=100000,output="volume"})
-- returns 0.002271095641486
```
