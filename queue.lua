--Queue follows the First In First Out principle

Queue = {}

function Queue:enqueue(value)
    table.insert(self, value)
end    
