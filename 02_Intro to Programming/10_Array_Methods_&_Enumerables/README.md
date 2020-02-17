# Array Methods & Enumerables


# Lecture 1: Array Manipulation Methods

One of the ways we can add elements is via the <b>shovel method</b> like so:

        arr = ["Vanessa", "Candace", "Dave"]
        print arr
        puts
        arr << "Jia" # shovel method to add someone to the array
        print arr
        puts

### Add Multiple Elements to the End of an Array With .push (Shovel on Steroids)

But we can also use <b>`arr.push("New_Element1", "New_Element2", etc.)`</b> to add multiple elements to the array. We CANNOT do the same thing with the shovel method...it just wouldn't work. Shovel only operates on a single element:

        arr = ["Vanessa", "Candace", "Dave"]
        print arr
        puts
        arr.push("Jia", "Kurstie", "Alvin") # takes these new parameters and adds them to the array
        print arr
        puts

### Remove the Last Element With .pop

If you want to remove an element from an array, we'll use <b>`arr.push("Removed_Element1," "Removed_Element2," etc.)`</b>. The below will evaluate to: `Dave` on the first line and then `["Vanessa", "Candace"]` on the second line. 

        arr = ["Vanessa", "Candace", "Dave"]
        print arr.pop # evaluates to the element you're trying to remove: Dave
        puts
        print arr
        puts

If you add two <b>`arr.push("Removed_Element1," "Removed_Element2," etc.)`</b>, it will combine the last two elements together. The below will evaluate to `DaveCandace` on the first line and then `["Vanessa"]` on the second line, unless you put a puts in between the `print arr.pop()`'s. You also don't need to use the parentheses too.


        arr = ["Vanessa", "Candace", "Dave"]
        print arr.pop() # evaluates to the element you're trying to remove: Dave
        puts
        print arr.pop()
        puts
        print arr
        puts

### Add an Element to the Front of an Array with .unshift

Using <b>`arr.unshift`</b> is kind of like shovel in the sense that you can add elements to the arary, but this adds it to the front like so:


        arr = ["Vanessa", "Candace", "Dave"]
        print arr.unshift("Jia")
        puts
        print arr.unshift
        puts


### Remove the First Element of an Array with .shift

Using <b>`arr.shift`</b>, evaluates to the first element: `Vanessa` on the top row and then `["Candace", "Dave"]` on the bottom row:

        arr = ["Vanessa", "Candace", "Dave"]
        print arr.shift
        puts
        print arr # you can call it what it is
        puts




# Lecture 2: Index & Include Methods

Can be used for both arrays and strings.

### Using <b>`array/string.index(ele)`</b> to evaluate to the index where ele is found(return the element's inde)x

        arr = ["SF", "NY", "LA"]
        puts arr.index("LA") # this will return 2
        
If you're looking for the index of an element that isn't in the array, it won't return anything.

You can also use `.index` to find where a certain substring of a string begins after a certain point. The below will evaluate to `1`, meaning you can begin to find the substring `ello` in `hello` starting at index 1.

        str = "hello"
        puts str.index("ello")



### Using <b>`array/string.include?(ele)`</b> to evaluate to a boolean indicating if ele is found

If you want to use the include pattern, you're basically asing a True/False question of if something is in the array or string.

        arr = ["SF", "NY", "LA"]
        puts arr.include?("NJ") # returns false

If you want to check a string and see if a letter is in a string, you can do that like this below, which will evaluate to `true`. Ruby is case sensitive so looking for "E" would evaluate as `false`.

        str = "hello"
        puts str.include?("e")
       
Include is also useful if you're looking for a substring inside of a string. The following will evaluate as `true`.

        str = "hello"
        puts str.include?("ello")



# Lecture 3: `.reverse` & `.reverse!` Array Methods

### <b>`arr/string.reverse`</b>

To reverse the order that the array items are printed, we'll use <b>`arr/string.reverse`</b> like this:

        arr = [1, 2, 3, 4]
        print arr.reverse
        puts


or:

        str = "hello"
        puts str.reverse
        
### <b>`array/string.reverse!`</b>

The ! means you're modifying the existing variable in place. Using <b>`array/string.reverse!`</b> will then cause you to print the reverse of the array:

        arr = [1, 2, 3, 4]
        print arr
        puts
        arr.reverse!
        print arr
        puts 

<b>Example of application:</b> if we want to check if a word is a palindrome (it's the same when spelled forwards and backwards)

        def is_palindrome(word)
            return word == word.reverse
        end

        puts is_palindrome("madam") # true - add puts to your method calls
        puts is_palindrome("hello") # false - add puts to your method calls



# Lecture 4: Range Slicing Array Methods

How to slice arrays and strings in Ruby.

To return the array element in x index position:

        arr = ["a", "b", "c", "d", "e"]
        print arr[1]
        puts # returns b


To return a slice of the array, specify a reange of indices. Return all elements b through d, inclusive with TWO dots:

        arr = ["a", "b", "c", "d", "e"]
        print arr[1..3] # from the array, take items from 1 to 3
        puts

You can also use the slice method for exclusive lists (not including the first/last items with THREE dots:

        arr = ["a", "b", "c", "d", "e"]
        print arr[1...3] # from the array, take items from 1 to 3
        puts # returns '["b", "c", "d"]'

or:

        str = "bootcamp"
        print str[1...3] # from the array, take items from 1 to 3
        puts # returns 'oo'

You can use negative syntax to go in reverse order of indexing:

        str = "bootcamp"
        print str[-2]
        puts # Returns 'm'

The negative number corresponds to items at the end of the array/string:

        str = "bootcamp"
        print str[1..-2]
        puts # Returns 'ootcam'



# Lecture 5: `.split` & `.join` Array Methods

### `string.split` -- you can only use it to split/break a string (can't do array.split)

If you have a sentence string and you want to isolate every element in the string, you'll use `string.split`. This evaluates to an array of words b/c you cut at each space in the sentence.

The following evaluates to: `["follow", "the", "yellow", "brick", "road"]`. Each element of the array will be the word b/c you chose to split on the space character -- cut wherever is a space and make everything become elements of the array.

        str = "follow the yellow brick road"

        print str.split(" ")
        puts # evaluates to an array - you chose to split on the space character; cut whereever there is space

But if you split it at the "y", the following evaluates to: `["follow the ", "ellow brick road"]`. There is only one y, so it returns two elements--cut to the left of y and cut to the right of y:

        str = "follow the yellow brick road"

        print str.split("y")
        puts


If you want to isolate a certain string element, create a variable (like words) and set it equal to `str.split(" ")` so it cuts around the words (to split them), and then make it `puts words[index_number]` to return a single element, like so below. This returns `yellow`.

        str = "follow the yellow brick road"

        words = str.split(" ")
        puts words[2]


If you wanted to take a string and print out every element of that string, you'd create a variable chars and make it equal to a str.split with the substring of an empty string `("")` -- makes a cut after every element of that string:

        str = "follow the yellow brick road"
        chars = str.split("")
        print chars
        puts


### array.join -- this is how we join array elements together

If you want to take a number of array elements and combine them, define how you do this in the `(" ")` area. The following will return: `hello world how are you`.

        arr = ["hello", "world", "how", "are", "you"]
        puts arr.join(" ") # this takes the substring " " (the space) and inserts it next to every adjacent pair of words

For example, let's make the .join substring "HI". The output here would be: `helloHIworldHIhowHIareHIyou`.

        arr = ["hello", "world", "how", "are", "you"]
        puts arr.join("HI")


### Combination of both methods: replace an element (split) with another element (join)

If you wanted to remove all of the l's, this is what you'd do below. This would return: `["fo", "", "ow the ye", "", "ow brick road"]`

        str = "follow the yellow brick road"
        print str.split("l")
        puts

When you then add in `.join` this will take all the l's and allow you to replace them with something else, which in this case below would turn the l's to Z's and return: `foZZow the yeZZow brick road`.

        str = "follow the yellow brick road"
        print str.split("l").join("Z")
        puts


# Lecture 6: Enumerables Part I - More Efficient than While Loops for Arrays and Strings

Group of methods, called Enumerables, let us iterate in a cleaner way. Right now, we have three elements to a loop, which is below. This is our old method below, which returns `Jan Feb Mar Apr`.

        months = ["Jan", "Feb", "Mar", "Apr"]

        i = 0                                   # THE COUNTER
        while i < months.length                 # THE CONDITIONAL
            month = months[i]
            puts month

            i += 1                              # THE INCRIMENTING COMPONENT
        end

## `Block Parameters` -- iterate if you only want to run a single line of code in your block

Our new method, called <b>`Enumerables`</b>, looks like this below. It takes in a block of code...rather than a normal parameter like a number like we did before, we take in a `block parameter`. This `block parameter` replaces the `while loop` from before into a single line of code and we get the same output as before: `Jan Feb Mar Apr`

It automatically iterates every element of the array:

        months = ["Jan", "Feb", "Mar", "Apr"]

        months.each { |month| puts month }      # Each is a method we're calling on each element of the array
                                                # The block of code is specifying a parameter, |month| - iterates from one element to the next
                                                
You can also make the paremeter |ele| and it will perform the same:

        months = ["Jan", "Feb", "Mar", "Apr"]

        months.each { |ele| puts ele }

## `Multiline Block` -- use if you have multiple lines in your code that you want to run in your block

This will separate each element with a line.

        months = ["Jan", "Feb", "Mar", "Apr"]

        months.each do |ele| # do block parameter -- keyword do, operates like 'while'
            puts ele
            puts "----" # to separate each outputted element
        end

To print out each element of a sentence string, `h e l l o  w o r l d`, you'd use a do block and specify `do` in your block parameter:

        sentence = "hello world"

        sentence.each_char do |char|
            puts char
        end 

## `idx` - return every element in an array/string with its corresponding index

But in the above, there's no notion of an index as we iterate in the above, so let's go back to our array example. We can use `idx` to return each element in an <b>array</b> with its corresponding index like below:

        months.each_with_index do |ele, idx| # do block parameter -- keyword do, operates like 'while'
            puts ele
            puts idx
            puts "----" # to separate each outputted element
        end

If you want to do something analogous for a <b>string</b>, 

        sentence = "hello world"

        sentence.each_char.with_index do |char, idx|
            puts char
            puts idx
            puts "----"
         end 


# Lecture 7: Enumerables Part II - To iterate quickly through a range of numbers

If you want to iterate all of the number from 1 to 5, you could do the following like we reviewed previously:

        arr = [1,2,3,4,5]

        # prints out every element of the array
        arr.each { |ele| puts ele }                # THE BLOCK

BUT...if you wanted to do the same for the elements between 1 and 100, you're not going to write out each element. That'd be insane...so let's clean up that syntax.

Apply the dot <b>(two dots: ..)</b> method to the elements at the start and end of the array. This will return all numbers 1-10, inclusive.

        # Cleaner code
        (1..10).each { |num| puts num}      # Each takes in a block of code and iterate through

Applying triple dots <b>(three dots: ...)</b> will make the range exclusive of the END and exclude the ending number.


# Lecture 8: Enumerables Part III - How to iterate a string/phrase with clean code

Let's create a range and iterate through that range, not including the max 4 b/c of the 3 dots:
`(0...4).each { |num| puts num}`

If you want to print out hello four times, you'd put:
`(0...4).each { puts "hello"}`
OR
`4.times { puts "hi"}`


# Lecture 9: Nested Loops Lecture I

Previously, we learned how to write loops as `while loops` or use the `each method` (aka enumerables). But what we haven't done yet is put a loop inside the body of the loop.

## Putting a loop inside of a loop: counting 1-5 each time you count up from 1-3:

        (1..3).each do |num1|
            puts num1

            (1..5).each do |num2| #distinction of outer number and inner number
                puts "    " + num2.to_s # catonating these two strings
            end # inner loop fully contained in body of outer loop
        end

The output of this is - notice the catonizing part of `num2<b>.to_s</b>` which catonizes these two strings. Repeat the entire innerloop, three different times:

        1
            1
            2
            3
            4
            5
        2
            1
            2
            3
            4
            5
        3
            1
            2
            3
            4
            5
    
## Instead of printing out the number over here, let's put it inside of the inner loop so that you see each iteration on a single line:

Really just changing the location of where you put the 1:

        (1..3).each do |num1|
            (1..5).each do |num2|
            puts num1.to_s + "  " + num2.to_s
            end
        end

Output of that is. Different looking output, but expresses same pattern. Every left number refers to num1, every left number refers to num2 (num2 changes from one iteration to the next). After we go through all of our num2's, we then get to switch up our num1's through this pattern (really just hitting pairs of numbers):

        1  1
        1  2
        1  3
        1  4
        1  5
        2  1
        2  2
        2  3
        2  4
        2  5
        3  1
        3  2
        3  3
        3  4
        3  5

Each line represents one iteration of this nested loop. There are 15 outputs (lines of output code), which makes sense since the outer loop iterates 3 times, and the inner loop iterates 5 times (3 x 5 for the total number of iterations).

# Lecture 10: Nested Loops Lecture II

Review, let's hit every element in an array with `.each` and a `do` block:

        arr = ["a", "b", "c", "d"]

        arr.each do |ele|
            puts ele
        end 

This outputs to a,b,c,d (vertically)

So let's put a nested loop in here. We basically used distinct parameters here `ele1` and `ele2`. We wrote the same each twice, just gave them different parameter names, but one is fully contained in the other.

We are doing some string concatenation, looking at a pair of elements. Below we iterate through all possible pairs WITH duplicates:

        arr.each do |ele1|
            arr.each do |ele2|
                puts ele1 + ele2
            end 
        end

On every iteration, `ele2` will change. Basically, ele1 becomes "a" and we're holding onto ele1, and ele2 is going to iterate through from a-b-c-d, once we exhaust all of our ele2's, then we get to iterate through ele1. There are 16 iterations (lines) for each pair...we printed out all possible pairs. This outputs to:

        aa
        ab
        ac
        ad
        ba
        bb
        bc
        bd
        ca
        cb
        ........
        dd
        
BUT....what if we only want to iterate through only unique pairs (no duplicates like ab and ba)?
 
We don't want to grab the same element twice, because they come from the same array. If we want to have both of our each loops look at different elements, we need to track the `index`.

We are going to use `_with_index` to track this. We'll also add `, idx1` and `, idx2`. However this sets index 1 and 2 to zero, so that's not right since we don't want to look at the same position of this array for ele1 and ele2. To fix this, we want to make sure we're looking at different indices at any point in time (and not print out ele1 and ele2 at different iterations), only on particular iterations. We'll add in a conditional `if` statement to cross-check our results.

This if statement comes in handy b/c now we'll only print out the statements if the index of ele1 is greater than ele2. In the beginning both of our each's will start at index 0, but this if statement, it will check if 0 > 0. This is false, so don't print out that pair. The next iteration, `idx2` only changes, so comparing 0 and 1 (if 1 > 0)...which is true, so you print out that pair.

        arr.each_with_index do |ele1, idx1| # index1 is zero. 
            arr.each_with_index do |ele2, idx2| #index2 is also zero.
                if idx2 > idx1
                    puts ele1 + ele2
                end
            end 
        end 

The output evaluates to the below, with a lot less iterations, and each pair is unique:

        ab
        ac
        ad
        bc
        bd
        cd


To print out the elements with their indices, use the below, and make sure to turn each index into a string that you can print: 

        arr.each_with_index do |ele1, idx1| # index1 is zero. 
            arr.each_with_index do |ele2, idx2| #index2 is also zero.
                if idx2 > idx1
                    puts ele1 + ele2
                    puts idx1.to_s + "  " + idx2.to_s # need to convert the indices to strings
                    puts "----------" # at the end of each iteration, put in dashes to separate them visually
                end
            end 
        end 

This outputs to: 

        ab
        0  1
        ----------
        ac
        0  2
        ----------
        ad
        0  3
        ----------
        bc
        1  2
        ----------
        bd
        1  3
        ----------
        cd
        2  3
        ----------

### So why does this `if statement` actually get rid of duplicate outputs?

It's because the indices correspond to the same array.

If indx2 > indx1, then idx2 is never referring to what idx1 referred to previously. Idx2 is always moving to a new element, and never trying to touch what idx1 already touched previously.


# Lecture 11: Two Dimensional Arrays

Previously, we've been using arrays and storing multiple data types inside an array. But instead of storing simple elements, we can store whatever type of data we want to in an array.

### Interesting observation: `puts` vs. `print`

Let's say we have an array:

        arr = [
            ["a", "b", "c"],
            ["d", "e"],
            ["f", "g", "h"]
        ]

| `puts arr` | `print arr` |
|:---|:---:|
| Prints out vertical output | Prints out in array structure horizontally | 
| a | [["a", "b", "c"], ["d", "e"], ["f", "g", "h"]] |
| b
c
d
e
f
g
h |


### What if we filled an array with arrays?

Subarrays -- let's index after already indexing:

        arr = [
            ["a", "b", "c"],
            ["d", "e"],
            ["f", "g", "h"],
        ]

        subArr = arr[1]
        print subArr[1]
        puts

We've made subarray index[1] of array's index[1], so index[1] of `["d", "e"]`....which becomes just `"e"`.

But...a better way to do this, just do `arr[1][1]`


        arr = [
            ["a", "b", "c"],
            ["d", "e"],
            ["f", "g", "h"],
        ]
        print arr[1][1]
        puts


This will output: `e`


To iterate through a 2D array, see the below. We'll print out the subarray before we run the inner loop:

        arr = [
            ["a", "b", "c"],
            ["d", "e"],
            ["f", "g", "h"],
        ]
        
        arr.each do |subArr|
            print subArr
            puts
            subArr.each do |ele| # NEST THE LOOP
                puts ele # INNER LOOP
            end
        end 

Everytime we print out the subarray (which belongs to our outer loop), we'll start our inner loop and literally iterate through each element of that subarray. This will print out:

        ["a", "b", "c"]
        a
        b
        c
        ["d", "e"]
        d
        e
        ["f", "g", "h"]
        f
        g
        h


# Exercises

## TO INITIALS: Write a method `to_initials` that takes in a person's name string and returns a string representing their initials.

Need to get the first character of their name --> split on the space

        def to_initials(name)
            parts = name.split(" ")     # cuts where the space is
            initials = ""               # want to return some string data
            parts.each { |part| initials += part[0] }           # go in and grab the first position of each part; concantenate some initials with string[index 0]
            return initials
        end

        puts to_initials("Kelvin Bridges")      # => "KB"
        puts to_initials("Michaela Yamamoto")   # => "MY"
        puts to_initials("Mary La Grange")      # => "MLG"


## FIRST IN ARRAY: Write a method `first_in_array` that takes in an array and two elements, the method should return the element that appears earlier in the array.

Basically, you want to locate the index of both elements and compare them numerically. The `if statement` is a boolean, so when it returns false, it will run the `else`. You'd never have a case where the index of ele1 = ele2 (i.e. there's a tie), unless we pass in the same element twice, but we don't have to worry about that here.

        def first_in_array(arr, el1, el2)               # take in array and two elements
            if arr.index(el1) < arr.index(el2)          # if el1 comes first/before ele2, return el1
                return el1                              # if so, return ele1
            else
                return el2                              # if not, return ele2
            end 
        end 

        puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
        puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"

## ABBREVIATE SENTENCE: Write a method `abbreviate_sentence` that takes in a sentence string and returns a new sentence where every word longer than 4 characters has all of it's vowels removed.

We modify the words that are >4 characters by removing their vowels. We may want to decompose it and hit every element. First, let's split the sentence b/c we recognize that a space (" ") separates one word from the next. For example, if we want to print out each word and see what that looks like, use this code (which will output an array of each word:

        def abbreviate_sentence(sent)
            words = sent.split(" ")     # split method spits you back an array (of words, which we'll call 'words')
            print words
            puts


        end

Now, we can iterate over each word, with `.each`. IF the new word is greater than 4 characters, then appreviate it.

The trick here is to abbreviate the sentence in part 1 and then abbreviate the words in part 2:

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

### Need a method that takes in a single word as a string and removes vowels from that string

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

This outputs to:

        fllw the yllw brck road
        what a wndrfl life

## FORMAT NAME: Write a method `format_name` that takes in a name string and returns the name properly capitalized.

For every word, the first character is capitalized and subsequent letters are not. We'll need to first split the string into its parts. 

Note: you can only use `.split(" ")` on a string, and `.join(" ")` on an array.

Note: use str.upcase and str.downcase. abc.upcase # => "ABC"

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

This returns:

        Chase Wilson
        Brian Crawford Scott


## IS VALID NAME: Write a method `is_valid_name` that takes in a string and returns a boolean indicating whether or not it is a valid name.

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


Output is:

        true
        false
        true
        false
        

## IS VALID EMAIL: Write a method `is_valid_email` that takes in a string and returns a boolean indicating whether or not it is a valid email address.





