--Stack follows the Last In First Out principle
--I also learnt that tables in LUA pretend to be objects

stack = {}

function stack:push(value)
    table.insert(self, value)
end

function stack:pop()
    return table.remove(self)
end

function stack:display()

    for i = 1, #stack do
        print(stack[i])
    end   
end    