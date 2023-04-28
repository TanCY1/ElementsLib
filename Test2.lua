local function dump(o)
	if type(o) == 'table' then
	  local s = '{'
	  for k, v in pairs(o) do
		if type(k) ~= 'number' then k = '"' .. k .. '"' end
		s = s .. k .. '=' .. dump(v) .. ','
	  end
	  s = s:sub(1, -2) .. "}"
	  return s
	else
	  return tostring(o)
	end
  end


function HCF(x, y)
	if y == 0 then
		return x
	end
	local r = (x % y)
	return HCF(y, r)
end

counter=0
function MultiHCF(t)
	counter=counter+1
	print(counter)
	local out={}
	if #t==1 then
		return t[1]
	end
	for i in ipairs(t) do
		if t[i]==1 then
			return 1
		end
		if i < #t then
			table.insert(out,HCF(t[i],t[i+1]))
		end
	end
	if #out==1 then
		return out[1]
	else return MultiHCF(out)
	end
end

x={}

local time = os.clock()
for i=1,10000 do
	table.insert(x,math.random(10,10000000)*10)
end
print(MultiHCF(x))
print(string.format("elapsed time: %.2f\n", os.clock() - time))