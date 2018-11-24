# .push method and shovel operator add elements to the end of an array

locations = %w[bar airport house]

p locations.push("bathroom", "library")
# => ["bar", "airport", "house", "bathroom", "library"]

p locations << "kitchen" << "hospital"
# => ["bar", "airport", "house", "bathroom", "library", "kitchen", "hospital"]

# .pop removes the last item or more if the number is specified as an argument
locations.pop(3)
p locations
# => ["bar", "airport", "house", "bathroom"]

# .pop returns what it removes
p locations.pop # => "bathroom"
p locations
# => ["bar", "airport", "house"]

p items = locations.pop(2)      # => ["airport", "house"]

# .insert accepts an index as the starting point from which to add elements
locations.insert(3, "forest", "lake")
p locations
# => ["bar", nil, nil, "forest", "lake"]
puts

# .unshift and .shift are the .push and .pop for the beginning of the array

p items.unshift("river", "ice") # => ["river", "ice", "airport", "house"]

water = items.shift(2)
p items                         # => ["airport", "house"]
p water                         # => ["river", "ice"]

# Equality and inequality operators on arrays

p items == water                # => false
p items != water                # => true

spots = ["bar", nil, nil, "forest", "lake"]
p locations == spots            # => true
