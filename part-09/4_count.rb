# .count the character/s expressed in the argument, returning the total

p "miao".count("m") # There's 1 'm'
# => 1

p "tree".count("e") # There are 2 'e'
# => 2

p "cacatua".count("ca") # There are 2 'c' and 3 'a'. 5 count total
# => 5
puts

def custom_count(string, search)
  count = 0
  string.each_char { |char| count += 1 if search.include?(char) }
  count
end

p custom_count("cacatua", "ca")
