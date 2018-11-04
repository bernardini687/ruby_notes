# 'gets' is a method for getting an input, it adds a new line to the input.
# .chomp removes the new line

puts "Sir, tell me your beautiful name"
name = gets.chomp.capitalize
# Assign the input to 'name' and capitalize the first letter (.capitalize)

puts "Sir #{name}, how old are you?"
age = gets.chomp.to_i
# Best practice for numeric inputs: make sure to turn them to integers (.to_i)

puts "Impressive! You are already #{age}? You seem a lot younger."
