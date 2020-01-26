

ef is_palindrome(word)
    reversed = ""

    i = 0
    while i < word.length #loop to iterate
        char = word[i]
        reversed = char + reversed # want to concotonate 

        i += 1 # increment
    end

    return reversed == word
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

