# Splat arguments allow methods to accept any number of arguments. Keep in mind they'll be stored in an array

def sum(*nums) # The * indicates the splat argument
  sum = 0
  nums.each { |num| sum += num }
  sum
end

p sum(3, 8, 7, 2) # => 20

def full_name(first, *mids, last)
  middle_name = String.new
  mids.each { |name| middle_name += "#{name.capitalize} " }
  "#{first.capitalize} " + middle_name + "#{last.capitalize}"
end

p full_name("oscar", "finn", "jim", "bernardini")
