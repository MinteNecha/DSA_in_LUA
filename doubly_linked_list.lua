DoublyLinkedList = {
    head = nil,
    tail = nil
}
DoublyLinkedList.__index = DoublyLinkedList

function DoublyLinkedList:new()
    local obj = {
        head = nil,
        tail = nil
    }

    setmetatable(obj, DoublyLinkedList)
    return obj
end

function DoublyLinkedList:insertFront(value)
    local node = {
        value = value,
        next = self.head,
        prev  = nil
    }

    if self.head ~= nil then
        self.head.prev = node
    else
        self.tail = node
    end   
    
    self.head = node
end

function DoublyLinkedList:insertEnd()
    local node = {
        value = value,
        next = nil,
        prev = self.head
    }

    if self.head ~= nil then 
        self.tail = node
    else    
        self.head = node
    end
    self.tail = node
end