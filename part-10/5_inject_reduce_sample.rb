# .inject and .reduce are synonyms. They iterate over an array while keeping track of the return values of the previous iterations

result = [2, 8, 10, 5, 5].inject(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous + current # => This will be the next 'previous' (previous += current)
end

p result

# => The previous value is 0 (Taken from the argument of .inject)
#    The current value is 2
#    The previous value is 2
#    The current value is 8
#    The previous value is 10
#    The current value is 10
#    The previous value is 20
#    The current value is 5
#    The previous value is 25
#    The current value is 5
#    30

animals = %w[cat sheep bear]

longest = animals.inject do |pre, cur|
  pre.length > cur.length ? pre : cur
end
p longest # => "sheep"

# .sample

p animals.sample    # => Extract random element from array
p animals.sample(2) # => Puts 2 random elements from array in a new array
p animals.sample(1) # => Puts 1 random element from array in a new array

def custom_sample(arr)
  arr[rand(0...arr.length)]
end

p custom_sample(animals)
