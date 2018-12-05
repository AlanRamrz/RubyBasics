def countMax(upRight)
  x = []
  y = []

  upRight.each do |item|
    array = item.split(' ')
    x << array[0].to_i
    y << array[1].to_i
  end

  maxX = x.max
  maxY = y.max

  puts "x: #{x} -> the bigger is: #{maxX}"
  puts "y: #{y} -> the bigger is: #{maxY}"

  matrix = Array.new(maxX){Array.new(maxY,0)}

  for k in 0...x.count
    matrix = addMatrix(matrix,x[k],y[k])
  end

  print_matrix(matrix,maxX,maxY)

  arrayMax = matrix.max
  arrayMax.sort!
  arrayMax.reverse!

  puts "The bigger is: #{arrayMax[0]}"

  out = count(matrix,maxX,maxY,arrayMax[0])

end

def print_matrix (matrix,x,y)

  for i in 0...x

    for j in 0...y
      puts "[#{i},#{j} is: #{matrix[i][j]}]"
    end

  end

end

def addMatrix(matrix,x,y)
  for i in 0...x

    for j in 0...y
      matrix[i][j] += 1
    end

  end

  matrix
end

def count(matrix,x,y,value)
  res = 0

  for i in 0...x

    for j in 0...y

      if matrix[i][j] == value
        res += 1
      end

    end

  end

  res

end

input = ["2 3", "3 7", "4 1"]
out = countMax input

puts "The final result is: #{out}"
