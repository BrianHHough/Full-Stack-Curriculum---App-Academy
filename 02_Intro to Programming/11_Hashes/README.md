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
    
   
Lecture 2 -- More Hashes

In arrays, `.length` tells you the number of elements in an array BUT with hashes, `.length` tells you the number of pairs in the hash.


The output of this is `5` because there are 5 pairs in this hash:

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    puts dog.length

### You can add info after the fact
You can manipulate the hash by adding info below, this will add a new key pair and add the info to the other pairs:

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    dog["location"] = "NY"
    puts dog

you can shovel new info in, which outputs two sets of arrays in the below.

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    print dog["enemies"] << "mailman"
    puts
    puts dog

......This outputs to:

    ["squirrel", "mailman"]
    {"name"=>"Fido", "color"=>"black", "age"=>3, "isHungry"=>true, "enemies"=>["squirrel", "mailman"]}


### to check if a key exists within a hash
Use `.hash_key?()` which is a boolean

This evaluates as `true` while if you use .has_keys? for "location", that would evaluate as `false` because there's no key pair about location.

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    print dog.has_key?("age")

### if you want an array of every key: `.keys`

This outputs to everything to the left of the rockets `["name", "color", "age", "isHungry", "enemies"]`

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    print dog.keys

Since it's an array, we can index into it, and look at the position 1 of the hash dog, only looking at the key pairs' left part. This would evaluate to `color`:

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    print dog.keys[1]

### if you want an array of every value: `.values`

This outputs to everything to the right of the rockets. This will output: `["Fido", "black", 3, true, ["squirrel"]]`:

    dog = {
        "name" => "Fido",
        "color" => "black",
        "age" => 3,
        "isHungry" => true,
        "enemies" => ["squirrel"]
    }

    print dog.values


# Lecture 3: Why Hashes?

Arrays: a collection of similar things (i.e. a single animal)
Hash: multiple elements of the same thing

Good array data: `animals = ["dog", "cat", "fish", "bird"]`
Not so good array data: `person = ["Alvin", 100, "New York", "burgers", true]`

The second is better as a hash like this:

    better_person = {
        "name"=>"Alvin",
        "age"=>100,
        "location"=>"New York",
        "favoriteFood"=>"burgers",
        "isHungry"=>true
    }
    puts better_person['location']


# Lecture 4: Iterating_Hashes

Ways to iterate through hashes with enumerables

Example code: 

    pizza = {
        "style"=>"New York",
        "slices"=>8,
        "diameter"=>"15 inches",
        "toppings"=>["Mushrooms", "green peppers"],
        "is_tasty"=>true
    }

### `.each` 
passes into the block the key and the value

Output: each iteration, separated by a dash

    pizza.each do |k, v|
        puts k
        puts v
        puts "------"
    end 

For example:

    style
    New York
    ------
    slices
    8
    ------
    ...

### `.each_key`
Just iterates over the keys into the block (aka everything on the left)

    pizza.each_key do |k|
        puts k
    end


### `.each_values`
Just iterates over the values into the block (aka everything on the right)

    pizza.each_value do |val|
        puts val
    end
