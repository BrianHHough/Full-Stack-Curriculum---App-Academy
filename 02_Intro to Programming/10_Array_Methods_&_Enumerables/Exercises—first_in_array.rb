
#puts ["a", "b", "c", "d"].index("z")
 
def first_in_array(arr, el1, el2)
    if arr.index(el1) < arr.index(el2) # if el1 comes first, return el1
        return el1
    else
        return el2
    end 
end 

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"