# Array Methods & Enumerables


## Lecture 1: Array Manipulation Methods

One of the ways we can add elements is via the <b>shovel method</b> like so:

        arr = ["Vanessa", "Candace", "Dave"]
        print arr
        puts
        arr << "Jia" # shovel method to add someone to the array
        print arr
        puts


But we can also use <b>`arr.push("New_Element1", "New_Element2", etc.)`</b> to add multiple elements to the array. We CANNOT do the same thing with the shovel method...it just wouldn't work. Shovel only operates on a single element:

        arr = ["Vanessa", "Candace", "Dave"]
        print arr
        puts
        arr.push("Jia", "Kurstie", "Alvin") # takes these new parameters and adds them to the array
        print arr
        puts

If you want to remove an element from an array, we'll use <b>`arr.push("Removed_Element1," "Removed_Element2," etc.)`</b>

