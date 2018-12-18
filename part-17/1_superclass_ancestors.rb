# Classes are also objects.
# A superclass is the parent of the current class
# A subclass is the child of the current class
# The mother of all classes is BasicObject
# Classes inherits stuff from superclasses

p 3.class # => Fixnum
p Fixnum.superclass
p Integer.superclass
p Numeric.superclass
p Object.superclass
p BasicObject.superclass # => nil

puts

p Fixnum.ancestors
# => [Fixnum, Integer, Numeric, Comparable, Object, Kernel, BasicObject]

# Comparable and Kernel are actually modules, not classes

p Array.ancestors
# => [Array, Enumerable, Object, Kernel, BasicObject]
p FalseClass.ancestors
# => [FalseClass, Object, Kernel, BasicObject]
p Float.ancestors
# => [Float, Numeric, Comparable, Object, Kernel, BasicObject]
p Hash.ancestors
# => [Hash, Enumerable, Object, Kernel, BasicObject]
p NilClass.ancestors
# => [NilClass, Object, Kernel, BasicObject]
p Proc.ancestors
# => [Proc, Object, Kernel, BasicObject]
p Range.ancestors
# => [Range, Enumerable, Object, Kernel, BasicObject]
p Regexp.ancestors
# => [Regexp, Object, Kernel, BasicObject]
p String.ancestors
# => [String, Comparable, Object, Kernel, BasicObject]
p Time.ancestors
# => [Time, Comparable, Object, Kernel, BasicObject]
p TrueClass.ancestors
# => [TrueClass, Object, Kernel, BasicObject]
