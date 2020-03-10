# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

def pig_latin_word(word)
    vowels = "aeiou" # vowel string to reference to contain all vowels
    
    # abcdefghijklmnopqrstuvwxyz

    # check if the word starts with a vowel, then add yay
    if vowels.include?(word[0]) # word is a string and check if starts with first position if its a vowel - check this character
        return word + "yay" # return + add string yay
    end 

    # iterate through every letter of each word
    word.each_char.with_index do |char, idx| # iterate and grab every character
        if vowels.include?(char) # we know the behavior of each char is to iterate from left to right
            before_vowel = word[0...idx] # up to but not including vowel -- gives you `tr`
            after_vowel = word[idx..-1] # very last position, inclusive -- gives you `ash`
            return after_vowel + before_vowel + "ay"
        end
    end

end


puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"