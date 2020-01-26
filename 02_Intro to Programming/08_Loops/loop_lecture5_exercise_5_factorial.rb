
def factorial(num)
    product = 1 # initialize this variable to 1, when you multiply numbers into it it works. Can't be zero because of multiplication. Needs to be 1.
  
    i = 2 
    while i <= num # while loop
      product *= i # * because times; similar to plus equals and minus equals: product * i
  
      i += 1 #counter
    end
  
    return product # once performing, want to return the loop. Product ready after multiplying everything and thus after the while loop.
  end
  
  puts factorial(3) # => 6, because 1 * 2 * 3 = 6
  puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
