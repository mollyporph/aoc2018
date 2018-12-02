input = readlines("input.txt")
function get_diff_1(x)
    for line in input
        diffs = 0
        for (i, c) in enumerate(x)
            if c != line[i]
                diffs += 1
            end
        end
        if diffs == 1
            println([c for (i, c) in enumerate(x) if line[i] == c]...)
        end
    end
end
get_diff_1.(input)