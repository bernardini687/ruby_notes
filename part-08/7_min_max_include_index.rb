#
terracotta = [3, 8, 2, 1, 0, 19, -3, 27]
#
# def custom_max(arr) # Bad design. Unnecessary bang method and one excess line
#   arr.sort!
#   arr[-1]
# end
#
def custom_min(arr)
  arr.sort[0] # Good! Recall that '[]' is just a method, you can chain it!
end
#
def fun_max(arr)
  max = arr[0]
  arr.each { |value| max = value if value > max }
  max
end
#
p custom_min(terracotta)  # => -3
p fun_max(terracotta)     # => 27
#
p terracotta.min          # => -3
p terracotta.max          # => 27
#
# .min and .max works with alphabet too

#.include?
#
p "hello".include?("l")   # => true
p terracotta.include?(19) # => true

# .index is fairly simple
#
p terracotta.index(19)    # => 5
