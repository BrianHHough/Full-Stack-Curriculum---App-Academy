# Array Methods & Enumerables


## Lecture 1: Array Manipulation Methods

<b>The `break` function:</b> immediately exits the loop

<b>The `next` function:</b> 

This while loop has a conditional to stop after the first 5 is printed...and then we print "loop end" after!

    i = 1
    while i <= 10
        puts i
        if i == 5 # loop stops at first time we print out 5
            break # exits the loop
        end 
        puts i
        i += 1
    end


    puts "loop end" # prints if loop done running

This while loop has a conditional to skip over the second 5...and then we print "loop end" after!

    i = 1
    while i <= 10
        puts i
        if i == 5 # loop stops at first time we print out 5
            i += 1
            next # skips over second 5 now with the i += 1 above
            # skip over this iteration (skip over i += 1 -- so we're back at printing 5 and never reach that incriment function)
        end 
        puts i
        i += 1
    end


    puts "loop end" # prints if loop done running



