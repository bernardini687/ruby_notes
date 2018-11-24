# .to_a

chars_range = "G".."N"
p chars_range
# => "G".."N"

chars_arr = chars_range.to_a
p chars_arr
# => ["G", "H", "I", "J", "K", "L", "M", "N"]

puts

num_range = 4..9
p num_range
# => 4..9

num_arr = num_range.to_a
p num_arr
# => [4, 5, 6, 7, 8, 9]
