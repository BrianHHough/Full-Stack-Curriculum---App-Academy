
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

## DOUBLE: Double the elements of an array
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

## EDIT EACH ELEMENT OF AN ARRAY: Add an ! to the end of each string element in an array

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


## MULTIPLY ARRAY ELEMENTS BY ITS INDEX: Take array and multiple every number with its index

    def element_times_index(numbers)

        new_numbers = [] # set equal to empty array

        i = 0 # iterate through all elements of array

        while i < numbers.length
        new_numbers << numbers[i] * i

        i += 1
      end

        return new_numbers
    end
 
 
 ## RETURN ALL NUMS: Take in a number max and return array of all even numbers from 0 to max
 
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


## RANGE: Return all numbers between a min and max, inclusive

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
  
  ## ODD RANGE: Return all numbers between a min and max that are odd
  
      def odd_range(min, max)
      odds = []


      i = min
      while i <= max
        if i % 2 == 1 # if you divide odd numbers by 2, R1
        # you can also do this:
        # if i % 2 != 0  //// means not divisible by even
        odds << i
        end

        i += 1
      end


      return odds
    end

    print odd_range(11, 18) # => [11, 13, 15, 17]
    puts
    print odd_range(3, 7)   # => [3, 5, 7]
  

## REVERSE RANGE: take a min and max and return an array of all numbers in reverse order, exclusive of the min/max

    def reverse_range(min, max)
      nums = []

        i = max - 1 # set up while loop 
        while i > min
          nums << i

          i -= 1 # want to decriment, not incriment, so not +
        end

      return nums
    end

    print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
    puts
    print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]


## FIRST HALF: take array and return first half of elements (if odd # of array elements, include middle)

    def first_half(array)
      new_array = []

        i = 0
        while i < array.length / 2.0 # decimal is key for odd numbered array: doing 5 divided by 2.0
          new_array << array[i]

          i += 1
        end


      return new_array



    end

    print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
    puts
    print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]


## FACTORS OF: Returns array of positive numbers less than or equal to the number that can divide that number

    def factors_of(num)
      factors = []

      i = 1
      while i <= num
        # if i is a factor of num (if num divisible by i)
        if num % i == 0 # if num mod i divisible by zero, no remainder
          factors << i
        end

        i += 1
      end

      return factors
    end

    print factors_of(3)   # => [1, 3]
    puts
    print factors_of(4)   # => [1, 2, 4]
    puts
    print factors_of(8)   # => [1, 2, 4, 8]
    puts
    print factors_of(9)   # => [1, 3, 9]
    puts
    print factors_of(16)  # => [1, 2, 4, 8, 16]


## SELECT ODDS: return new array containing the odd numbers of the original array

    def select_odds(numbers)

        odds = [] # name your new array

        i = 0 #iterating left to right through array
        while i < numbers.length # numbers is initial array
          num = numbers[i]

          if num % 2 == 1 #odd always has R1
            odds << num      
          end 

          i += 1 # go through every number of i
        end

        return odds

      end

      print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
      puts
      print select_odds([2, 4, 6])            # => []


## SELECT LONG WORDS: Return new array with words of the original array that are longer than 4 characters

    def select_long_words(words)
      long_words = []

      i = 0
      while i < words.length
        word = words[i]
        # if string has length greater than 4


        if word.length > 4
          long_words << word
        end


      i += 1
      end

      return long_words

    end

    print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
    puts
    print select_long_words(["keep", "coding"])                               # => ["coding"]



## SUM ELEMENTS: return array containing the results of adding together corresponding elements of the original arrays

    def sum_elements(arr1, arr2)
      new_arr = []

        i = 0

        while i < arr1.length
          el1 = arr1[i]
          el2 = arr2[i]
          new_el = el1 + el2
          new_arr << new_el

          i += 1
        end

      return new_arr

    end

    print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
    puts
    print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]


## FIZZ BUZZ: Return array containing all numbers greater than 0 and less than max that are divisible by 4 or 6 (not both)

	def fizz_buzz(max)
		nums = []

		i = 0 #counter
		 while i < max
			if (i % 4 == 0 || i % 6 == 0) && !(i %4 == 0 && i % 6 == 0)# but don't want numbers divisible by both

	       nums << i
	     end
	    i += 1
	    end 

	  return nums


	end

	print fizz_buzz(20) # => [4, 6, 8, 16, 18]
	puts
	print fizz_buzz(15) # => [4, 6, 8]

