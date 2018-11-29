# Best practice with one line blocks: stick with {}
2.times { puts "Miaow" }
# => Miaow
# => Miaow
puts

# Best practice with multiple lines blocks: stick with 'do' ... 'end'
2.times do
  puts "Miaow"
  puts "Woof"
end
puts

# The block variable in .times represent each iteration
2.times do |i| # The block variable persists only inside the block
  puts "Current human iteration: #{i + 1}" # +1 because it starts from 0
  puts "Human because computers count from 0."
  puts "Who's the stupid now?"
end
# => Current human iteration: 1
# => Human because computers count from 0.
# => Who's the stupid now?
# => Current human iteration: 2
# => Human because computers count from 0.
# => Who's the stupid now?
puts

10.times { |i| puts "#{(i + 1) * 3}" } # Puts 10 multiples of 3
