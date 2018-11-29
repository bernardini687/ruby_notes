array = [1, 2, 4, 6, 3, "troll", 4, 3, [], nil, 7]

array.each do |e|
  if e.is_a?(Fixnum)
    p e ** 2
  else
    puts "Coconuts!"
    next # Next doesn't break the loop, it skips the current iteration
  end
end

puts # .reverse and .reverse!

p array.reverse  # => [7, nil, [], 3, 4, "troll", 3, 6, 4, 2, 1]
p array          # => [1, 2, 4, 6, 3, "troll", 4, 3, [], nil, 7]

array.reverse!
p array          # => [7, nil, [], 3, 4, "troll", 3, 6, 4, 2, 1]

puts

collect = []
array.each do |e|
  if e.is_a?(Fixnum)
    collect << e     # Shovel only fixnums in a new array
  else
    next
  end
end

p collect.sort         # .sort sorts from less to greater
# => [1, 2, 3, 3, 4, 4, 6, 7]

p collect.sort.reverse # .sort.reverse sorts from greater to less
# => [7, 6, 4, 4, 3, 3, 2, 1]

puts # => .concat

p [1, 2, 3] + [4, 5]       # => [1, 2, 3, 4, 5]
p [1, 3, 3].concat([4, 5]) # => [1, 3, 3, 4, 5]

puts

def custom_concat(arr1, arr2)
  arr2.each { |x| arr1 << x }
  arr1
end

p custom_concat(collect, [0, -1])
# => [7, 3, 4, 3, 6, 4, 2, 1, 0, -1]
