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



## Lecture 3: Array Methods II -- `.reverse` & `.reverse!`

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


## Lecture 4: Array Methods III -- Range Slicing Lecture
How to slice arrays and strings in Ruby
