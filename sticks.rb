def cutSticks(lengths)
  output = []

  while !lengths.empty?
    output << lengths.count
    minor = lengths.min

    lengths.collect! do |item|
      item -= minor
    end

    lengths.delete(0)

  end

  output

end


lengths = [5,4,4,2,2,8]
output = cutSticks(lengths)
puts "The output is: #{output}"
