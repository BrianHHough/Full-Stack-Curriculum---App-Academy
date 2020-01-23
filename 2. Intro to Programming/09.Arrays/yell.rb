# Write a method yell(words) that takes in an array of words and returns a new array where every word from the original array has an exclamation point after it.

def yell(words)
  
    yelled = [] # placeholder for list of yelled words to go
    
    i = 0
    
    while i < words.length # iterate this loop through the full length of words
      word = words[i]
      yelled_word = word + "!"
      yelled << yelled_word
      
      i += 1
    end
    
    return yelled
    
  end
  
  print yell(["hello", "world"]) # => ["hello!", "world!"]
  puts
  print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]