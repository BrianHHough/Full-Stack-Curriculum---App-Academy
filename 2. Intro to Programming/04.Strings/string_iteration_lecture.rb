# Iterating Through Strings with Loops

##### THE START OF THE STRING w/ defining string = Hello World
#str = "hello world"
#puts str[0]
#puts str[1]
#puts str[4]

### string of i really means string of 2, but according to the evaluationals of ruby, this also works because it will evaluate to the variable we assigned, in this case index 2 which is "l"
#i = 2
#puts str[i] 


### to hit all numbers up to & including 4 - each number printed is valid index for what's in string
#i = 0
#while i < 5 #need to be particular - how far do you want to go? index for is last place this is true
    #puts i 
    #i += 1 #incremental by counting
#end

### instead of printing just i, what if I make it a string - hit every character in string
#i = 0
#while i < str.length #can also make i<5,6,7,etc. - I is less than the length of the string
    #puts str[i]

    #i += 1
#end


###

def printChars(str)
    i = 0
    while i < str.length
        puts str[i]

        i += 1
    end
end

printChars('pizza')
