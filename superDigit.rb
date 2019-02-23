def createFinalNumber(number, times)
    finalNumber = ''

    times.times do
        finalNumber << number.to_s
    end

    finalNumber
end

def getSuperDigit(stringNumber)
    sum = 0

    if stringNumber.length == 1
        return stringNumber
    else
        numbersArray = stringNumber.split("")

        numbersArray.each do |item|
            sum += item.to_i
        end

        getSuperDigit(sum.to_s)
    end

end

res = getSuperDigit(createFinalNumber(148, 3))

puts "The super digit is: #{res}"