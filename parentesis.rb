def parenthesis(n)
    part1 = ""
    part2 = ""

    if n > 0
        n.times do
            part1 << "{}"
            part2 = insertHalf(part2, "{}")
        end     
    end

    part1 << ", " << part2
end

def insertHalf(string, insert)
    half = string.length / 2
    string.insert(half, insert)
end

puts "The result is: #{parenthesis(2)}"