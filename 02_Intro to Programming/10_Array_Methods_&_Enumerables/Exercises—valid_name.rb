
## IS VALID NAME: Write a method `is_valid_name` that takes in a string and returns a boolean indicating whether or not it is a valid name.

# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized

# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

def is_valid_name(str)
    # Let's split the string into its parts
    parts = str.split(" ") # if we split the string, we have at least two parts that could be valid. If we have one part, won't work
    #if parts.length < 2
    #    return false
    #end 

    if parts.length < 2
        return false
    end

    parts.each do |part|
        if !is_capitalized(part) #if not capitalized with !...this is a boolean
            return false
        end 
    end

    return true # need to verify every element of the name and return true after checking everything
end

def is_capitalized(word) # not taking in a whole name, just if each part of the name...hence words
    if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase #if the 1st char is uppercase
        return true
    else
        return false
    end
end

# puts is_capitalized("Bootcamp") # true
# puts is_capitalized("BooTcamp") # false

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false

