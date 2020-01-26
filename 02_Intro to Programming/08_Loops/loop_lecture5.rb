# break - immediately exit loop
# next - skips to the next iteration; skips over any code after keyword

# simple ex. of while loop --> will print out number twice 

i = 1
while i <= 10
    puts i
    if i == 5 ## this breaks it at 5
        i += 1
        next
        #break ## break exits/stops the loop
    end
    puts i
    i += 1
end

puts "loop end"