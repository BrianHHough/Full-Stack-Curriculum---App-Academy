# Write a method range(min, max) that takes in two numbers min and max. The method should return an array containing all numbers from min to max inclusive.

def range(min, max)
  
    nums = [] # you don't put this in loop, b/c then you'd repeat it every time
    
    i = min # min is 2, so i is set to 2
    while i <= max
      nums << i # need to shovel i into the nums array
    
      i += 1
    end
    
    return nums
  
  end
  
  print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
  puts
  print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]