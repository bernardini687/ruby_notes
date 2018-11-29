# .each iterate over each elements of the array

shapes = %w[triangle ellipse square rectangle]

shapes.each do |shape|
  puts "It's a fine #{shape}."
  puts "Well done!"
  break # Break loop at the first iteration
end
# => It's a fine triangle.
#    Well done!
puts
shapes.each { |shape| puts shape.capitalize }
# => Triangle
#    Ellipse
#    Square
#    Rectangle
puts
3.times.each do |n|
  x = n + 1
  square = x * x
  puts "#{x} to the square is: #{square}"
end
# => 1 to the square is: 1
#    2 to the square is: 4
#    3 to the square is: 9
puts
fives = [5, 10, 15, 20, 25, 30, 35, 40]
threes = [3, 6, 9, 12, 15, 18, 21, 24]

def evens_n_odds(array)
  evens, odds = [], []
  array.each { |n| n.even? ? evens << n : odds << n }
  p evens, odds
end

evens_n_odds(fives)
# => [10, 20, 30, 40]
#    [5, 15, 25, 35]
puts
evens_n_odds(threes)
# => [6, 12, 18, 24]
#    [3, 9, 15, 21]
