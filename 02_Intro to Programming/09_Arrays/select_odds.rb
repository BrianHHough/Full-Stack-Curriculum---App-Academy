# Write a method select_odds(numbers) that takes in an array of numbers and returns a new array containing the odd numbers of the original array.

def select_odds(numbers)
  
    odds = [] # name your new array
    
    i = 0 #iterating left to right through array
    while i < numbers.length # numbers is initial array
      num = numbers[i]
      
      if num % 2 == 1 #odd always has R1
        odds << num      
      end 
      
      i += 1 # go through every number of i
    end
    
    return odds
  
  end
  
  print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
  puts
  print select_odds([2, 4, 6])            # => []