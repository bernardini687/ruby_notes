# An array is a sequential collection of Ruby objects

numbers = [1, 4, 9, 3, 39, 22]
strings = ["red", "blue", "green"]
various = [true, 2, true, "avocado", false, 89]
arrays = [
  [true, "pumped up", 630],
  [false, "dead", 300],
  [true, "blue", 1100]
]
names = %w[Bestiun Testun Zoppet Gattash] # %w a valid array of one-word strings

# Create a new array with 3 nil inside
p Array.new(3)
# => [nil, nil, nil]

# Create a new array with 2 "yo"
p Array.new(2, "yo")
# => ["yo", "yo"]

# Create a new array with 3 arrays, each sub-array have 3 ones
p Array.new(3, Array.new(3, 1))
# => [[1, 1, 1], [1, 1, 1], [1, 1, 1]]
puts

fruits = %w[Apple Orange Grape Banana Lemon Pomegranate]

p fruits[0] # => "Apple"
p fruits[2] # => "Grape"
p fruits[6] # => nil

# Negative index numbers starts from the end of the array
p fruits[-1] # => "Pomegranate"
p fruits[-2] # => "Lemon"

# .[] is a method called on an array which expects an argument index position

p fruits.[](-1) # => "Pomegranate"
p fruits.[](-2) # => "Lemon"
puts

# With .fetch you can specify a custom output instead of nil
# Don't forget the second argument with .fetch, or error!

p names[2]                       # => "Zoppet"
p names[-7]                      # => nil
p names.fetch(2)                 # => "Zoppet"
p names.fetch(-7, "Unknown cat") # => "Unknown cat"
