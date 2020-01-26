def reverse(word)
    reversed_str = "" # "" represents the empty string, what's in the () of puts

    i = 0
    while i < word.length # iterating here through the string
        char = word[i] #variable
        reversed_str = char + reversed_str

        i += 1 
    end

    return reversed_str
end

puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"