# Prompt: Write a method count_e(word) that takes in a string word and returns the number of e's in the word

def count_e(word) # need a method

    count = 0 #need a place/variable to store the data/number of the number of e's we've seen

    i = 0 # use i to iterate thru word
    while i < word.length #increment your count with a while loop through string
        
        char = word[i] #makes char contain a single letter
    
        if char == "e" # if statement to check a certain condition
            count += 1
        end

        i += 1
    end

    return count # don't want to return count inside while loop b/c that would be before we check thru the entire word
end

puts count_e("movie") # => 1
puts count_e("excellent") # => 3