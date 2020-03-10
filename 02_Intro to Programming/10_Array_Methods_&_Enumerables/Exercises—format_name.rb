## FORMAT NAME: Write a method `format_name` that takes in a name string and returns the name properly capitalized.

# Hint: use str.upcase and str.downcase
#"abc".upcase # => "ABC"

def format_name(str)
    parts = str.split(" ") # A space separates each word
    new_parts = []

    parts.each do |part| # Iterate over each part using .each. Note: each part is a single element from the array, which is a string.

        # We need to target the first element of the string.
        new_parts << part[0].upcase + part[1..-1].downcase
        # give you upper case version of index 0. + concatenation
        # when you slice a string, you use square brackets, but you don't put a single number. You'll use a range and go all the way to the end, which is index -1 (note: -2 is the second to last element of a string)
    end

    return new_name = new_parts.join(" ") # first we split on a space, now we join on a space
end 

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"