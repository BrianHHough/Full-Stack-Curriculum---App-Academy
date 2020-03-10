## ARRAY TRANSLATE: Write a method array_translate that takes in an array whose elements alternate between words and numbers. The method should return a string where each word is repeated the number of times that immediately follows in the array.

def array_translate(array)
    new_str = ""
    
    i = 0
    while i < array.length
        ele = array[i]
        num = array[i + 1] # i is always an index (position) and next position is i + 1: for example, i = cat, 1 = 2
        new_str += ele * num
        
        # num.times { new_str += ele } # want to take ele and concatenate it to the new string
        
        i += 2 # want to jump by 2
    end

    return new_str
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts
