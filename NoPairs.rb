def minimalOperations (words)
  i = 0
  res = []

  words.each do |item|

    charArray = item.split("")
    flag = 0
    compare = ""

    charArray.each do |c|

      if c == compare
        flag += 1
        compare = ""
      else
        compare = c
      end

    end

    res[i] = flag
    i += 1

  end

  res
end

words = ["ab","aab","abb","abab","abaaaba"]
res = minimalOperations(words)

puts res
