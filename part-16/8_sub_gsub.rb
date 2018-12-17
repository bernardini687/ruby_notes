# .sub takes two arguments, substitutes the first instance of the first argument with the second argument

puts "hello".sub('l', 'g')  # => heglo

word = "miao"
puts word.sub('m', 'c')           # => ciao
puts word.sub('ao', 'stic')       # => mistic

puts word                         # => miao

word.sub!('iao', 'aple syrup')

puts word                         # => maple syrup

# => .gsub takes care of all instances

puts "hello".gsub('l', 'g')       # => heggo

number = "123 456 7890"
puts number.gsub(' ', '') # => 1234567890

# => Its possible to pass a Regex rather than a String as the first argument

number2 = "(123)-456 7890"
puts number2.gsub(/[-\s\(\)]/, '')
