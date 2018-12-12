whoa = "'Whoa' is frequently mispelled 'woah'"

p whoa.include? "hoa"           # => true
p whoa.include? "miao"          # => false
p whoa.include? "f"             # => true

def custom_include?(s, subs)
  s.split(subs).length != 1
end
# If 1 then 'subs' is not included
# I want 'true' if not 1, id est there is a match

p custom_include?(whoa, "hoa")  # => true
p custom_include?(whoa, "miao") # => false
p custom_include?(whoa, "f")    # => true

def tutorial_include?(s, subs)
  len = subs.length
  s.chars.each_with_index do |char, index|
    return true if s[index, len] == subs
  end
  false
end

p tutorial_include?(whoa, "hoa")  # => true
p tutorial_include?(whoa, "miao") # => false
p tutorial_include?(whoa, "f")    # => true
