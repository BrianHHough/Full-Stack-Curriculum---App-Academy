#Loops - cycle/repeat code -- INTERATION

### WHILE LOOPS

# while the condition of a loop is true, keep running the loop once the condition is false, stop the loop

def printNums(min, max, step)
    i = min
    while i <= max #need to make sure this at somepoint evalutes to false or you get into the infiite loop issue
        puts i

        i += step
    end
end

printNums(0, 10, 2)
puts '-----'