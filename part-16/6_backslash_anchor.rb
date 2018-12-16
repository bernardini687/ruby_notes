# "." is a wildcard, if you are looking for dots use "\."

thoreau = "The question is not what you look at, but what you see."
p thoreau.scan /\./ # => ["."]

# \d -> Any digit
# \D -> Any non-digit
# \s -> Space " "
# \S -> Any non-space

# Regex Anchor

# \A -> At the start
# \z -> At the end

p thoreau.scan /\A\S+/ # => ["The"]
p thoreau.scan /\S+\z/ # => ["see."]
