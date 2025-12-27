--[[The disadvantage of the previous stack (stack.lua file) 
is that it only creates one Stack, and all data is lives inside that
Stack itself.

So that is where we will introduce .__index and metatables.
This two will help us use inheritance in LUA.
This allows us to have multiple objects with the same methods not repeated.
]]--

Stack = {}
Stack.__index = Stack  
--according to this the new (stacks/tables/objects) inherit the methods of original Stack

function Stack:new()
--creates new obj inheriting Stack's functions/methods
    local obj = {}
    setmetatable(obj, Stack)
    return obj
end

function Stack:push(value)
    table.insert(self, value)
end

function Stack:pop()
    table.remove(self)
end

function Stack:display()
    for i = 1, #self do
        print(self[i])
    end   
end