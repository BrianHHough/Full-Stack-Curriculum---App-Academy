
# Arrays Notes


## Lecture 1: Arrays overview

<b>Array data type</b> = to stay organized in code; way to store multiple other data

letters = ["a", "b", "c"]

print letters 


To find the number of things in an array, use <b>length</b>:

letters = ["a", "b", "c", "d"]

puts letters.length



To get a single element of an array --> specify its <b>index</b>.

letters = ["a", "b", "c", "d"]

puts letters[0]
puts letters[1]

<br />


## Lecture 2: How to manipulate arrays after the fact

1. SHOVEL METHOD

`names = ["Maurice", "Mashu", "Kurstie"]`
`print names`

`names << "Abby"`

`print names`


2. ASSIGN an element to an array

`names = ["Maurice", "Mashu", "Kurstie"]`

`names[1] = "Mike"`

`print names`

<br />


## Lecture 3: How to Iterate through an array

There are two methods:
1. <b>INDEX METHOD</b>
  
  
  `puts foods[2]`

2. <b>VARIABLE:</b> put a variable that evaluates to a number
  
  
  `i = 2`
  
  
  `puts foods[i]`
<br />
<br />

# Problems

## Double the elements of an array
    def doubler(numbers)
        doubled_nums = []
        i = 0
        while i < numbers.length
          old_ele = numbers[i]
          new_ele = old_ele * 2
          doubled_nums << new_ele

          i += 1
        end

        return doubled_nums

      end

## Add an ! to the end of each string element in an array

    def yell(words)

        yelled = []        # placeholder for list of yelled words to go

        i = 0

        while i < words.length       # iterate this loop through the full length of words
          word = words[i]
          yelled_word = word + "!"
          yelled << yelled_word

          i += 1
        end

        return yelled

      end


## Take array and multiple every number with its index

    def element_times_index(numbers)

        new_numbers = [] # set equal to empty array

        i = 0 # iterate through all elements of array

        while i < numbers.length
        new_numbers << numbers[i] * i

        i += 1
      end

        return new_numbers
    end
 
 
 ## take in a number max and return array of all even numbers from 0 to max
 
     def even_nums(max)

        array = []

        i = 0

        while i <= max
        # if i is an even number, then put it in array

        if i % 2 == 0 # every even number divisible by 2

          array << i
        end

        i += 1
      end

        return array

    end

    print even_nums(10) # => [0, 2, 4, 6, 8, 10]
    puts
    print even_nums(5)  # => [0, 2, 4]


## Return all numbers between a min and max, inclusive

    def range(min, max)

        nums = [] # you don't put this in loop, b/c then you'd repeat it every time

        i = min # min is 2, so i is set to 2
        while i <= max
          nums << i # need to shovel i into the nums array

          i += 1
        end

        return nums

      end

      print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
      puts
      print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
  
  


