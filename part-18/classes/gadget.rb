# Generally you want one file per class and filename == ClassName

class Gadget
  # This is an empty class but it inherits from its superclasses
end

p Gadget.superclass              # => Object
p Gadget.superclass.superclass   # => BasicObject

phone = Gadget.new
laptop = Gadget.new
smartwatch = Gadget.new

p String.new                     # => ""
p String.new "Bravo"             # => "Bravo"

p phone                          # => #<Gadget:0x007fb68c169cf8>
p laptop                         # => #<Gadget:0x007fb68c169cd0>
p smartwatch                     # => #<Gadget:0x007fb68c169ca8>

p phone.is_a? Gadget             # => true
p phone.is_a? Object             # => true
p phone.is_a? BasicObject        # => true

p laptop.respond_to? :nil?       # => true
p smartwatch.respond_to? :length # => false
