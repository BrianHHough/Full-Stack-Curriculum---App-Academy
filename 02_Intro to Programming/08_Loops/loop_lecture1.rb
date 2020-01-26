#Loops - cycle/repeat code

def repeatHello()

    puts "before the loop"

    counter = 0
    while counter < 5 #while this is true, keep running it. once it's false, stop running it
        puts counter

        counter += 1 # completes this process until reaches 5
    end

    puts "after the loop"
end

repeatHello()