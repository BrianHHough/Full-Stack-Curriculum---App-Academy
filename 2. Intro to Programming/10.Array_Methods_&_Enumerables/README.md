# Array Methods & Enumerables


## Lecture 1: Array Manipulation Methods

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




## Lecture 2: Index & Include Methods

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



## Lecture 3: `.reverse` & `.reverse!` Array Methods

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



## Lecture 4: Range Slicing Array Methods

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



## Lecture 5: `.split` & `.join` Array Methods

### `string.split` -- you can only use it on a string (can't do array.split)

If you have a sentence string and you want to isolate every element in the string, you'll use `string.split`. This evaluates to an array of words b/c you cut at each space in the sentence.

The following evaluates to: `["follow", "the", "yellow", "brick", "road"]`. Each element of the array will be the word b/c you chose to split on the space character -- cut wherever is a space and make everything become elements of the array.

        str = "follow the yellow brick road"

        print str.split(" ")
        puts # evaluates to an array - you chose to split on the space character; cut whereever there is space

But if you split it at the "y", the following evaluates to: `["follow the ", "ellow brick road"]`. There is only one y, so it returns two elements--cut to the left of y and cut to the right of y:

        str = "follow the yellow brick road"

        print str.split("y")
        puts


If you want to isolate a certain string element, create a variable (like words) and set it equal to `str.split(" ")` so it cuts around the words (to split them), and then make it `puts words[index_number]` to return a single element, like so:

        str = "follow the yellow brick road"

        words = str.split(" ")
        puts words[2]



### array.join



