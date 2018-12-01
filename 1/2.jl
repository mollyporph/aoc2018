function find_first_duplicate(values, current_value, input)
    for op in input
        current_value += parse(Int32, op)
        if haskey(values,current_value)
            return current_value
        end
        values[current_value] = false
    end
    return find_first_duplicate(values, current_value, input)
end

print(find_first_duplicate(Dict(), 0, readlines("input.txt")))