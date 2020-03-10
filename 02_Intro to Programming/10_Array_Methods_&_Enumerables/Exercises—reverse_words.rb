# Reverse Words
# Write a method reverse_words that takes in a sentence string and returns the sentence with the order of the characters in each word reversed. Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.

def reverse_words(sent)
    words = sent.split(" ") # choosing to split on the space so can isolate each word into a separate element of an array 

    # need to store these words somewhere
    new_words = []

    # now want to reverse each element of the array, so use an iterable:
    words.each { |word| new_words << word.reverse} # String reverse method + shovel method to join reversed words together w/ the below:
    new_sent = new_words.join(" ") # to join words together to get back final new sentence
    return new_sent
    
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'


