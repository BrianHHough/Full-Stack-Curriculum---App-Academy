
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


