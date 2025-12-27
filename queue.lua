--Queue follows the First In First Out principle

queue = {}

function queue:enqueue(value)
    table.insert(self, value)
end    

function queue:dequeue()
    table.insert(self, 1)
end    

function queue:display()
    for i = 1, #queue do
        print(queue[i])
    end   
end    