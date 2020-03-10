#Combinations
# Write a method combinations that takes in an array of unique elements, the method should return a 2D array representing all possible combinations of any 2 elements of the array.


def combinations(arr)
    pairs = [] # this is 1d

    arr.each_with_index do |ele1, idx1| # compare this element to others in the array via a nested loop
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1 # make sure only looking at new things
                pairs << [ele1, ele2] # shovel array into pairs
            end
        end 
    end

    return pairs # will be a 2d array by now

end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts


