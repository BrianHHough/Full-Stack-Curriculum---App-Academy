#Method Return Values Lecture

#OPTION 1
# def calc_average(num1, num2)
    # sum = num1 + num2
    # avg = sum / 2.0
    # puts avg
# end


#calc_average(5, 10) #but you lose the 7.5 b/c can't plug it into other stuff. There is a more efficient way to do this

#OPTION 2 -- MORE USEFUL METHOD

def calc_average(num1, num2)
    sum = num1 + num2
    avg = sum / 2.0
    return avg # returning 7.5 - jumps back from waht we called and will replace method called
end

# the return keyword lets a method call evalute to a value

#puts calc_average(5, 10) #print out expression - jump in defintion and bring some data with me

result = calc_average(5, 10) #because it results to 7.5
puts result + 1
