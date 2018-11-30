# String.index(String, Fixnum) scans a string to look for the index number of the characters specified in the first argument.
# The second arguments defaults to 0, meaning it will start searching from the beginning.
# If specified, it will start from another position, given an index

cool_fact = "My cat has just taken a shit"
p cool_fact.index("m") # Output 'nil' because of case-sensitivity
# => nil

p cool_fact.index("has") # Output 7 because it's only the first letter that matters
# => 7

p cool_fact.index("a") # Output 4 because it returns the very first match
# => 4

p cool_fact.index("a", 5) # Now look for the "a" after the first one
# => 8

# .rindex does the same thing but scans backwards

p cool_fact.rindex("a")
# => 22

p cool_fact.rindex("a", 21)
# => 17

def custom_index (string, substring)
  return nil unless string.include?(substring)
  string.chars.each_with_index do |element, index|
    return index if element == substring[0]
  end
end

p custom_index(cool_fact, "M")
# => 0

p custom_index(cool_fact, "Miao") == cool_fact.index("Miao")
# true
