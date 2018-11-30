# Splat arguments allow methods to accept any number of arguments. Keep in mind they'll be stored in an array

def sum(*nums) # The * indicates the splat argument
  sum = 0
  nums.each { |num| sum += num }
  sum
end

p sum(3, 8, 7, 2) # => 20
