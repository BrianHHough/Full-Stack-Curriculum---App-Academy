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




