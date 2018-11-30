# .insert the string given as the second argument before the character at the given index. Works as a bang method

something = "somethin"
something.insert(-1, "g")
p something
# => "something"

# .clear the string, returning an empyt one. Works as a bang method
nothing = "nothing"
nothing.clear
p nothing
# => ""

#.delete any matching character of the given substring
p something.delete("oei") # There's also the bang equivalent .delete!
# "smthng"

def custom_delete(string, substring)
  deleted = ""
  string.each_char { |char| deleted << char unless substring.include?(char) }
  deleted
end

p custom_delete(something, "smthng")
# => "oei"
