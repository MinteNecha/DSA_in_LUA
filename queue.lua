--Queue follows the First In First Out principle

Queue = {}

function Queue:enqueue(value)
    table.insert(self, value)
end    

function Queue:dequeue()
    table.insert(self, 1)
end    

function display()
    for i = 1, #Stack do
        print(Stack[i])
    end   
end    