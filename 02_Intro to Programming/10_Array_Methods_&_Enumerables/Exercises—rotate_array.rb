# Write a method rotate_array that takes in an array and a number. The method should return the array after rotating the elements the specified number of times. A single rotation takes the last element of the array and moves it to the front.

def rotate_array(arr, num)
    num.times do # enumerables in ruby // returning whatever the number was
        ele = arr.pop # use pop - it removes last element of array and also returns it
        arr.unshift(ele)
    end
        return arr # now need to return the original array
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts



 