# Conditional assignment

greeting = "hello"
extract = 10
letter = greeting[extract] # [0]h, [1]e, [2]l, [3]l, [4]o
p letter # => nil
letter ||= "not found" # Assign this new value if nil, ignore otherwise
p letter # => "not found"
