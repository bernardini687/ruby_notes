# A way to iterate over the characters of a string

funny_word = "Cacatua"
funny_word.each_char { |chr| print "#{chr}i" }
# => Ciaiciaitiuiai
puts

# .split(//) == .split("") == .chars
p funny_word.downcase.split(//)
# => ["c", "a", "c", "a", "t", "u", "a"]
p funny_word.downcase.split("")
# => ["c", "a", "c", "a", "t", "u", "a"]

funny_letters = funny_word.chars # Make it an array and then iterate over it
funny_letters.each { |chr| print "#{chr}u" }
#=> Cuaucuautuuuau
