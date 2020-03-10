# Nested Loops

arr = ["a", "b", "c", "d"]

# REVIEW: Let's iterature through them with .each

#arr.each do |ele| # do block with ele so we hit every element of the array
#    puts ele
#end 

### let's turn this into a nested loop

#below we iterate through all possible pairs with duplicates
#arr.each do |ele1|
#    arr.each do |ele2|
#        puts ele1 + ele2
#    end 
#end

# below we iterate through only unique pairs:

arr.each_with_index do |ele1, idx1| # index1 is zero. 
    arr.each_with_index do |ele2, idx2| #index2 is also zero.
        if idx2 > idx1
            puts ele1 + ele2
            puts idx1.to_s + "  " + idx2.to_s # need to convert the indices to strings
            puts "----------" # at the end of each iteration, put in dashes to separate them visually
        end
    end 
end 