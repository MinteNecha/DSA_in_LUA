--Stack follows the Last In First Out principle

Stack = {}

function Stack:push(value)
    table.insert(self, value)
end

function Stack:pop()
    return table.remove(self)
end

function Stack:display()

    for i = 1, #Stack do
        print(Stack[i])
    end   
end    