# .scan is called on a String and returns an Array of matches to its Regexp argument

p "So many words for The Dark Place".scan /a/ # => ["a", "a", "a"]
p "Killing me softly".scan(/l/).length        # => 3

# [] inside // to specify sort of an array of interested matches
p "Are you interested in more than one character?".scan /[cmt]/
# => ["t", "t", "m", "t", "c", "c", "t"]

# \d inside // means 'any single digit'
p "I'm 24 years old".scan /\d/                # => ["2", "4"]

# + means 'one or more occurrences of whatever it's preceding
p "Ciao, oggi è il 13-12-2018".scan /\d+/     # => ["13", "12", "2018"]

# .scan also accepts a block where you can specify what to do with matches
"Arrivederci".scan(/r+/) { |match| p match.length }
# => 2
# => 1
