Account={}

function Account:new (o)
    o = o or {}   -- create object if user does not provide one
    setmetatable(o, self)
    self.__index = self
    self.balance=0
    return o
end

function Account:deposit(v)
    self.balance=self.balance+v
end

function Account:withdraw(v)
    self.balance=self.balance-v
end


a=Account:new()
b=Account:new()
a:withdraw(1)
b:deposit(1)
print(a.balance,b.balance)
