local Elements = require("Elements")
water = Elements.Compound:new { { "H", 2 }, { "O" } }
-- makes new compound
print("Molar mass of water is " .. water.mass)
-- prints 18.015
