# .join the elements of an array into a string

numbers = [6, 6, 6]
the_string_of_the_beast = numbers.join
p the_string_of_the_beast
# => "666"

the_number_of_the_beast = the_string_of_the_beast.to_i
p the_number_of_the_beast
# => 666

# It accepts an argument which will be added between the elements of the soon-to-be-a-string array
p numbers.join(" + ") << " = 18!"
# => "6 + 6 + 6 = 18!"
puts

# Create a custom join method

def custom_join(arr, delimiter = "")
  string = ""
  arr.each { |elmnt| string << elmnt.to_s << delimiter.to_s }
  string[0, (string.length - delimiter.length)]
end

p custom_join(numbers)
# => "666"

p custom_join(numbers, " + ")
# => "6 + 6 + 6"

p custom_join(%w[m i a o b a u])
# => "miaobau"

p custom_join(%w[m i a o b a u], "-")
# => "m-i-a-o-b-a-u"
