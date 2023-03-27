# ElementsLib
---
This is a lua module to use the Periodic Table

## Usage
|Method                |Description|
| ------------------- |  ---------------------------------------------------- |
|locate(I,W,O)| I: Type of element to be searched </br> W: Element to be searched </br> O: Return type|
|table|List of all elements in the periodic table and their attributes|

## Example
```lua
--Example
local Element = require("Elements")
--prints the symbol for Silver
print(Element.locate("Name","Silver","Symbol")
-- returns Ag
```
