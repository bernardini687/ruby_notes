# Simply put, regular expressions allow to search into a string for substrings

foo = "Sometimes direct questions are more efficient."

p foo.downcase.start_with? "some"  # => true
p foo.downcase.start_with? "times" # => false
p foo.end_with? "."                # => true
p foo.end_with? "efficient"        # => false

def custom_start_with?(s, subs)
  s[0..(subs.length - 1)] == subs ? true : false
end

# No need of ternary operator because '==' evaluates to either true or false
def custom_end_with?(s, subs)
  s[-subs.length..-1] == subs
end

bar = "miao"

p custom_start_with?(bar, "bau")   # => false
p custom_start_with?(foo, "Some")  # => true

p custom_end_with?(bar, "AO")      # => false
p custom_end_with?(foo, "ent.")    # => true
