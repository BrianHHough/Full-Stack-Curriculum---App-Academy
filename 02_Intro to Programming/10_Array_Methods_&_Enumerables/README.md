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


# Lecture 8: Enumerables Part III - 


