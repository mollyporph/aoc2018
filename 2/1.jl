input = readlines("input.txt")

function count_occurences(line)
    a = Dict()
    for chr in line
        a[chr] = haskey(a, chr) ? a[chr] + 1 : 1
    end
    any(2 .== values(a)), any(3 .== values(a))
end

o = count_occurences.(input)
res = sum(first.(o)) * sum(last.(o))
print(res)
