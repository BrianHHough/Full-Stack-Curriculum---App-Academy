
def to_initials(name)
    parts = name.split(" ") # cuts where the space is
    initials = "" # want to return some string data
    parts.each { |part| initials += part[0] } # go in and grab the first position of each part; concatonate some initials with string[index 0]
    return initials
end

puts to_initials('Kelvin Bridges')
puts to_initials('Michaela Yamamoto')
