# When you have a simple if-else design, it's possible to refactor the code with the ternary operator

if 1 > 2
  puts "Yep!"
else
  puts "Nope!" # => Nope!
end

puts 1 > 2 ? "Yep!" : "Nope!" # => Nope!

# Anatomy:
# 1) what to check [?] 2) if true this [:] 3) else this

# A slimmer odd_or_even method
def odd_or_even(n)
  n.odd? ? "Odd!" : "Even!"
end

puts odd_or_even(2) # => Even!
puts odd_or_even(5) # => Odd!

def check_pokemon(pokemon)
  pokemon == "Charizard" ? "Fireball!" : "That is not Charizard! "
end

puts check_pokemon("Squirtle") # => That is not Charizard!
puts check_pokemon("Charizard") # => Fireball!
