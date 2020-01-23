# Write a method fizz_buzz(max) that takes in a number max and returns an array containing all numbers greater than 0 and less than max that are divisible by either 4 or 6, but not both.

def fizz_buzz(max)
	nums = []
  	
  	i = 0 #counter
 	 while i < max
  		if (i % 4 == 0 || i % 6 == 0) && !(i %4 == 0 && i % 6 == 0)# but don't want numbers divisible by both
          
       nums << i
     end
    i += 1
    end 
  
  return nums
  
  
end

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]