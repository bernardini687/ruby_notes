# .length returns how many key/value pairs are stored in the hash
# .empty? returns true if length == 0

zoo = {elephants: 4, monkeys: 13, tigers: 5, giraffes: 3}
savings = {}

p zoo.length     # => 4
p zoo.empty?     # => false
p savings.length # => 0
p savings.empty? # => true

# .each iterates over keys and values

zoo.each { |animal, count| puts "There are #{count} #{animal}" }
# => There are 4 elephants
#    There are 13 monkeys
#    There are 5 tigers
#    There are 3 giraffes

zoo.each { |pair| p pair } # One argument will refer to an array of each pair
# => [:elephants, 4]
#    [:monkeys, 13]
#    [:tigers, 5]
#    [:giraffes, 3]

zoo.each { |pair| puts pair.first } # To address only keys
# => elephants
#    monkeys
#    tigers
#    giraffes
