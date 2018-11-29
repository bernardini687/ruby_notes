# In nested 'each' blocks, you can access parent's |block_variables|
#
shirts = %w[red green blue black]
panties = %w[boxer slip]
#
shirts.each do |color|
  panties.each { |panty| puts "A #{color} shirt and a #{panty}."}
end
# => A red shirt and a boxer.
#    A red shirt and a slip.
#    A green shirt and a boxer.
#    A green shirt and a slip.
#    A blue shirt and a boxer.
#    A blue shirt and a slip.
#    A black shirt and a boxer.
#    A black shirt and a slip.
#
# p color, panty # =>  Nor 'color' nor 'panty' exists outside the 'each' block
puts

# 'for' loops' variables aren't temporary
#
num = 100 # 'num' is set to 100
#
for num in shirts # num will store each element of the array, one at a time
  puts num           # num last value is "black"
end
# => red
#    green
#    blue
#    black
puts
#
puts num # => black # Still black
