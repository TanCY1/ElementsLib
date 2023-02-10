function Dump (t)
    local out=""
    for k,v in pairs(t) do
        out=(out..tostring(k).." =\n")
        if type(v)=="table" then
            out=(out..Dump(v))
        else
            out=(out.." "..v.."\n")
        end
    end
    return out
end    

function Reverse (t)
    local r={}
    for k,v in pairs(t) do
        r[v]=k
    end
    return r
end

function Locateinit (t,s)
    local reversedElements={}
    for k,v in pairs(t) do
        if type(v[s]) ~= "nil" then
            reversedElements[v[s]]=k
        end
    end
    return reversedElements
end

function Locatemain (t,search,element,r)
    local index = Locateinit(t,search)[element]
    local TheElement = t[index]
    if type(TheElement) == "table" then
        if type(TheElement[r])=="table" then
            return "{"..table.concat(TheElement[r],",").."}"
        else
            if TheElement[r]~=nil then
                return TheElement[r]
            end
        end
    end
end