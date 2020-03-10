### ABBREVIATE SENTENCE: Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
    words = sent.split(" ")     # split method spits you back an array (of words, which we'll call 'words')
    new_words = [] # need a place to store all of the new variables, whether they have vowels or not
    words.each do |word| # we're going to iterate through each word in the array
        if word.length > 4
            new_word = abbreviate_word(word) # this helper function is vital; new variables to pass through
            new_words << new_word # want to SHOVEL this into the new array by adding it to the end
        else 
            new_words << word
        end 
    end 
    new_sent = new_words.join(" ") # specify a space to leave in between
end

# Need a method that takes in a single word as a string and removes vowels from that string

def abbreviate_word(word) # this function takes in a signel word, while the first function takes in a whole sentence // how to decompose this problem
    vowels = "aeiou"
    no_vowels = ""

    word.each_char do |char|
        if !vowels.include?(char) # is char 'Not' a vowel, b/c of the boolean expression
            no_vowels += char
        end
    end
    return no_vowels

end

puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
