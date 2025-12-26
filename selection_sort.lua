--Selection Sorting finds the smallest element, puts it at the front
--Repeats the whole process

function selection_sort(arr)
    for i = 1, #arr - 1 do
--compares this element to the whole list until the smallest value is moved to this index
        local minIndex = i
        
        for j = i+1, #arr do
            if arr[j] < arr[minIndex] then 
                minIndex = j
            end
        end
        
        local temp = arr[i]
        arr[i] = arr[minIndex]
        arr[minIndex] = temp
    end
    
    for i = 1, #arr do
        print(arr[i])
    end
end