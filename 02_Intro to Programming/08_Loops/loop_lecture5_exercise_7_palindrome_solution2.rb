


def is_palindrome(word)
    reversed = ""

    i = 0
    while i < word.length #loop to iterate
    reversed = word[i] + reversed

    i += 1 # increment
    end

    if word == reversed
        return true
    else
        return false
    end
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false

