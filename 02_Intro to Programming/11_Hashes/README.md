# Hashes


# Lecture 1: Intro to Hashes

Hashes = when your software sometimes needs a different organizational structure.

Array: elements arranged by indices

Hash: values stored by keys


When we call the "key value pair", we get this as the output: `App Academy`

    my_hash = {"name" => "App Academy", "color" => "red", "age" => 5}
    puts my_hash["name"]


To manipulate the data, you can do that like with values in enumerables. The output for this is `pink`

    my_hash = {"name" => "App Academy", "color" => "red", "age" => 5}
    my_hash["color"] = "pink"
    puts my_hash["color"]


Notice how you the output is now the full list but `pink` and `6` and not red and 5

    my_hash = {"name" => "App Academy", "color" => "red", "age" => 5}
    my_hash["color"] = "pink"
    my_hash["age"] += 1
    puts my_hash
    
    
