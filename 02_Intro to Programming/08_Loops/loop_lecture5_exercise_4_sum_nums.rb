def sum_nums(max)
    sum = 0 # set this to zero

    i = 1 # storing info in i
    while i <= max # while loop because counting up to and including = "+="

        sum += i
        
        i += 1 # want it to iterate through all values up to and including sum
    end

    return sum
end

puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15