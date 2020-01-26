
# Enumerable Methods
#   array
#       .each
#          .each_with_index
#   string
#       .each_char
#       .each_char.with_index

#months = ["Jan", "Feb", "Mar", "Apr"]

# Block Parameter
# months.each { |ele| puts ele } # doesn't take in a normal parameter

# Multiline Block
#months.each do |ele| # do block parameter -- keyword do, operates like 'while'
#    puts ele
#    puts "----" # to separate each outputted element
#end


# New Method for using index -- passes in two pieces of data to us to our block
#months.each_with_index do |ele, idx| # do block parameter -- keyword do, operates like 'while'
#    puts ele
#    puts idx
#    puts "----" # to separate each outputted element
#end



# i = 0 # Counter
# while i < months.length # Condition
#    month = months[i]
#    puts month

#    i += 1 # Incrimenting
# end




sentence = "hello world"

sentence.each_char.with_index do |char, idx|
    puts char
    puts idx
    puts "----"
 end 

