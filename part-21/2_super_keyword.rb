class Employee

  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi, my name is #{name}, #{age}."
  end
end

class Manager < Employee

  attr_reader :rank

  def initialize(name, age, rank)
    super(name, age)
    @rank = rank
  end

  def yell
    "Who's the boss? I'm the boss!"
  end

  def introduce
    super + " I'm the #{rank}."
  end
end

jim = Employee.new("Jim", 29)
p jim.introduce
# => "Hi, my name is Bob, 34."

dwight = Manager.new("Dwight", 35, "Assistant TO the Regional Manager")
p dwight.introduce
# => "Hi, my name is Dwight, 34. I'm the Assistant TO the Regional Manager."
