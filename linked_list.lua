LinkedList = {}
LinkedList.__index = LinkedList

function LinkedList:new()
    local obj = {
        head = nil
    }
    setmetatable(obj, LinkedList)
    return obj
end

function LinkedList:insertFront(value)
    local node = {
        value = value,
        next = self.head
    }
    self.head = node
end

function LinkedList:insertEnd(value)
    local node = {
        value = value,
        next = nil
    }

    if self.head == nil then
        self.head = node
        return
    end

    local current = self.head
    while current.next ~= nil do
        current = current.next
    end

    current.next = node
end    

function LinkedList:display()
    local current = self.head
    while current ~= nil do
        print(current.value)
        current = current.next
    end
end    

function LinkedList:deleteFront()
    if self.head ~= nil then
        self.head = self.head.next
    end
end    

function LinkedList:deleteEnd()
    if self.head == nil then 
        return
    end    
     
    if self.head.next == nil then
        self.head = nil
        return
    end

    local current = self.head
    while current.next.next ~= nil do
        current = current.next
    end

    current.next = nil 
end 

function LinkedList:search(target)
    local current = self.head
    while current ~= nil do 
        if current.value == target then 
            return true
        end    
        current = current.next
    end    
    return false 
end    