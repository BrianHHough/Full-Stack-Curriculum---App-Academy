# Two D Sum
# Write a method two_d_Sum that takes in a two dimensional array and returns the sum of all elements in the array.


def two_d_sum(arr)
    sum = 0

    # need to iterate through array
    arr.each do |subArr|
        subArr.each do |num| # need to iteratre through that array
            sum += num
        end
    end 

    return sum

end

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15


