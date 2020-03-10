# 2-Dimensional Arrays

arr = [
    ["a", "b", "c"],
    ["d", "e"],
    ["f", "g", "h"],
]

# ONE WAY to take the subarray of an array
#subArr = arr[1]
#print subArr[1]
#puts

# MORE EFFICIENT WAY TO DO THAT
#print arr[1][1]
#puts

# ITERATE THROUGH A 2D ARRAY
arr.each do |subArr|
    print subArr
    puts
    subArr.each do |ele| # NEST THE LOOP
        puts ele # INNER LOOP
    end
end 