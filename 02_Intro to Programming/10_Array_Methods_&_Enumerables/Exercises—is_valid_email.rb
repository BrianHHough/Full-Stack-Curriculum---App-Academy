# Write a method is_valid_email that takes in a string and returns a boolean indicating whether or not it is a valid email address.


# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
# CRITERIA 1: @ symbol
    parts = str.split("@") # get you an array of parts, before and after the @ symbol
    
    if parts.length != 2 # if output isn't two parts...
        return false # then return false (check for 3+ parts)
    end

# CRITERIA 2: only lowercase alphanumeric letters used - need to reference the alphabet

    left = parts[0]
    right = parts[1]
    alpha = "abcdefghijklmnopqrstuvwxyz"

    left.each_char do |char|
        if !alpha.include?(char) # if char not in alphabet
            return false
        end
    end

    if right.split(".").length == 2 # if there's exactly one dot, we should have an array of two
        return true # if array has length 2, return true, b/c means there are two parts
    else 
        return false
    end

end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")  