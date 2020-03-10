# Opposite Count
# Write a method opposite_count that takes in an array of unique numbers. The method should return the number of pairs of elements that sum to 0.


def opposite_count(nums)
    count = 0

    nums.each_with_index do |num1, idx1| # nested loop
        # need an inner loop to iterate through all of the potential pairs
        nums.each_with_index do |num2, idx2|
            if num1 + num2 == 0 && idx2 > idx1 # single loop; both sides must be true here
                count += 1
            # puts num1.to_s + " " + num2.to_s
            end
        end
    end

    return count 
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1




