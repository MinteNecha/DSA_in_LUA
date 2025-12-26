--Linear search compares target value against all elements in the table

function Linear_search(arr, target) --table/list and target value is required
    for i = 1, #arr do
        if arr[i] == target then
            return print(i.." is in the table.")
        end
    end
    return print(target.." is not in the table.")
end