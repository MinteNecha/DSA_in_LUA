function factorial(value)
    if value == 0 then
        return 1
    end
    return value * factorial(value - 1) 
end

function main()
    print("Enter value: " )
    value = io.read()
    print("Factorial of value is "..factorial(value))
end