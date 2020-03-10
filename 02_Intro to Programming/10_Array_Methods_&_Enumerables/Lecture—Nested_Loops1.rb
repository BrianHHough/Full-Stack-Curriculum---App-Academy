# Nested Loops

## Count inside a counting loop
#(1..3).each do |num1|
#    puts num1

#    (1..5).each do |num2| #distinction of outer number and inner number
#        puts "    " + num2.to_s #catonating these two strings
#    end #inner loop fully contained in body of outer loop
#end

# output is 1, 2, 3 and between each number, inner loops count 1-5 before proceeding to the next number

(1..3).each do |num1|
    (1..5).each do |num2|
    puts num1.to_s + "  " + num2.to_s
    end
end

