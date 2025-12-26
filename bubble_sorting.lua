--Bubble Sorting compares adjacent elements and swaps till if elements are in wrong order
--Repeated untill sorted

function Bubble_sort(arr)
    for i = 1, #arr do   --first loop to make sure complete list size loops are done 
        for j = 1, #arr - i do --second loop to go through each adjacent element for swapping
            if arr[j] > arr[j+1] then
                local temp = arr[j] --temporary variable to hold initial element before swapping
                arr[j] = arr[j + 1]
                arr[j+1] = temp
            end 
        end
    end
    
    for i = 1, #arr do
        print(arr[i])
    end
end