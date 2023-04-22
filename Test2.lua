local function dump(o)
	if type(o) == 'table' then
	   local s = '{'
	   for k,v in pairs(o) do
		  if type(k) ~= 'number' then k = '"'..k..'"' end
		  s = s .. k..'=' .. dump(v) .. ','
	   end
	   s=s:sub(1,-2).."}"
	   return s
	else
	   return tostring(o)
	end
 end

Account={}

function Account:new (o)
   -- create object if user does not provide one
    self.__index = self
    self.balance=0
    ou={}
    ou.__type=o
    setmetatable(ou, self)
    return ou
end

function Account:deposit(v)
    self.balance=self.balance+v
end

function Account:withdraw(v)
    self.balance=self.balance-v
end


a=Account:new(1)
b=Account:new(-1)
a:withdraw(1)
b:deposit(1)
print(a.__type)
print(b.__type)
