#How to iterate through an array

foods = ['pizza', 'sushi', 'burgers', 'fries', 'ramen'];

# TWO ways to do the same thing:

#1: INDEX METHOD
# puts foods[2]

#2: put a VARIABLE that evaluates to a number
# i = 2 # i is dynamic code, can change over time
# puts foods[i]

# i = 0
# while i < foods.length # hit every element of the array; hitting at most 4 here because less than (not = to) 5
    # puts foods[i] # index into the variable i
    
    # 'puts i' instead just lists numbers 0-4
    
    # i += 1 # need to iterate the variable by incrimenting i
# end

def print_array(arr)
    i = 0
    while i < arr.length # will be 4 in this case
        puts arr[i] # printing out every element
        # code
        i += 1
    end
end

foods = ['pizza', sushi', burgers']
peeps = ['Chase', 'Mary', 'Mark', 'Michaela']

print_array(peeps)

