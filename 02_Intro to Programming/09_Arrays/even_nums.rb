# Write a method even_nums(max) that takes in a number max and returns an array containing all even numbers from 0 to max

def even_nums(max)
	
    array = []

    i = 0

    while i <= max
    # if i is an even number, then put it in array
    
    if i % 2 == 0 # every even number divisible by 2
      
      array << i
    end
    
    i += 1
  end

    return array
    
end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]