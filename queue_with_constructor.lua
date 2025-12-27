--[[The disadvantage of the previous Queue (queue.lua file) 
is that it only creates one Queue, and all data is lives inside that
Queue itself.

So that is where we will introduce .__index and metatables.
This two will help us use inheritance in LUA.
This allows us to have multiple objects with the same methods not repeated.
]]--

Queue = {}
Queue.__index = Queue
--according to this the new (queue/tables/objects) inherit the methods of original Stack

function Queue:new()
--creates new obj inheriting Queue's functions/methods
    local obj = {}
    setmetatable(obj, Queue)
    return obj
end

function Queue:enqueue(value)
    table.insert(self, value)
end

function Queue:dequeue()
    table.remove(self, 1)
end

function Queue:display()
    for i = 1, #self do 
        print(self[i])
    end    
end