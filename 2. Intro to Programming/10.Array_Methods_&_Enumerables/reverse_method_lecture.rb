
# array/string.reverse, evaluates to a new reverse version of the array or string
# array/string.reverse!, reverses an array/string in place

def is_palindrome(word)
    return word == word.reverse
end

puts is_palindrome("madam") # true - add puts to your method calls
puts is_palindrome("hello") # false - add puts to your method calls