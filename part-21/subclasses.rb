class Employee

  attr_accessor :age # Generate reader and writer method
  attr_reader :name  # Generate reader method

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    # Interpolate reader methods, Ruby knows you're calling them on 'self'
    "Hi, my name is #{name} and I am #{age} years old"
  end
end

boris = Employee.new("Boris", 25)

p boris
# => #<Employee:0x007f93ca969370 @name="Boris", @age=25>
p boris.class
# => Employee
p boris.introduce
# => "Hi, my name is Boris and I am 25 years old"

class Manager < Employee # Manager is a subclass of Employee
  # An 'introduce' method here will override the one above it
  def yell
    "Who's the boss? I'm the boss!"
  end
end

class Worker < Employee  # A subclass inherits code frome the superclass
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    "Fork!"
  end
end

p Manager.ancestors
# => [Manager, Employee, Object, Kernel, BasicObject]

p Manager < Employee  # => true
p Worker < Employee   # => true
p Employee < Worker   # => false
p Manager < Kernel    # => true

bob = Manager.new("Bob", 48)
dan = Worker.new("Daniel", 36)

p bob.class
# => Manager
p dan.class
# => Worker
p dan.introduce
# => "Hi, my name is Daniel and I am 36 years old"

p bob.is_a?(Manager)  # => true
p dan.is_a?(Employee) # => true

p bob.instance_of?(Manager)  # => true
p bob.instance_of?(Employee) # => false

p bob.yell
# => "Who's the boss? I'm the boss!"
p dan.yell
# => "Fork!"
p dan.clock_in("09:30AM")
# => "Starting my shift at 09:30AM"
