def getSubStrings(s)
    indices = (0...s.length).to_a
    indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq
end

def orderAndConcat(array)
    s = ""

    array.sort!

    array.each do |item| 
        s << item
    end

    s
end

def getCharacter(s, position)
    array = getSubStrings(s)
    concatString = orderAndConcat(array)

    puts "The string is: #{concatString}"

    character = concatString.split("")[position - 1]
end

puts "The result is: #{getCharacter("dbac", 3)}"