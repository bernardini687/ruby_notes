animals = %w[cat dog cheetah bird whale]

i = 0
while i < animals.length # Loop while condition is true
  puts i                 # => Puts current iteration
  puts animals[i]        # => Extract value with variable index
  i += 1                 # => Increment variable
end

puts

x = 0
until x == animals.length # Loop while condition is false
  puts x
  puts animals[x]
  x += 1
end

puts

mine = %w[coal coal coal coal gold coal coal coal]

y = 0
while y < mine.length
  current = mine[y]                             # Current element of the array
  if current == "gold"                          # If it is "gold"
    puts "Yay! Found gold. Me leavin' y'all!"
    break                                       # Escape the if statement
  else
    puts "#{current.capitalize} ain't no gold!"
  end
  y += 1
end

puts

array = [1, 2, 4, 6, 3, "troll", 4, 3]

array.each do |e|
  if e.is_a?(Fixnum)
    p e ** 2
  else
    puts "Fuck off!"
    break
  end
end
