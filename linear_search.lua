function Linear_search(arr, target)
    for i = 1, #arr do
        if arr[i] == target then
            return print(i.." is in the table.")
        end
    end
    return print(target.." is not in the table.")
end