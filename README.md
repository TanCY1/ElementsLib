# ElementsLib

---
This is a lua module to use the Periodic Table

## Usage

|Method                |Description|
| ------------------- |  ---------------------------------------------------- |
|locate(I,W,O)| I: Type of element to be searched </br> W: Element to be searched </br> O: Return type|
|table|List of all elements in the periodic table and their attributes|
|mass(...)|Accepts any number of tables with the first value being Symbol of Element and the second being the number of particles|

## Example

```lua
--Example
local Element = require("Elements")
--prints the symbol for Silver
print(Element.locate("Name","Silver","Symbol")
-- returns Ag
print(Element.mass({"H",2},{"O"}))
-- prints 18.015
```
