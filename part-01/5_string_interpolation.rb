# #{string interpolation} permits strings to accept variables and other code

name = "Froggy"
age = 24

puts "Hello Sir #{name}, how are you today?"
# => Hello Sir Froggy, how are you today?
puts

puts "Age is ", age.to_s, "!" # Multiple 'puts'
# => Age is
# => 243
# => !
puts "Age is " + age.to_s + "!" # String concatenation
# => Age is 243!
puts

puts "Age is #{age}!" # String interpolation already converts to string (.to_s)
# => Age is 243!
puts "The result of adding '1 + 1' is '#{1 + 1}'"
# => The result of adding 1 + 1 is 2
puts

puts "In #{(2 ** 4) / 4} years time, I'll be #{age + (2 ** 4) / 4}"
# => In 4 years time, I'll be 28
puts "In #{age} years time, I'll be #{age * 2}"
# => In 24 years time, I'll be 48
