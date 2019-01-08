# 'super' without parenthesis tells Ruby to pass any eventual arguments
# 'super' with parenthesis but no arguments tells Ruby to not pass arguments
# 'super' with arguments to tell Ruby what to pass to the superclass

class Car

  attr_reader :maker

  def initialize(maker)
    @maker = maker
  end

  def drive
    "Room! Room!"
  end

  def brake
    "Brake!"
  end
end

class Ambulance < Car

  attr_reader :sirens

  def initialize(maker, sirens)
    super(maker)
    @sirens = sirens
  end

  def drive
    super + " Beep! Beep!"
  end

  def brake(speed)
    super() + " you're going #{speed}mph! Turn on the #{sirens} sirens!"
  end
end

ambulance = Ambulance.new("Ford", 3)
p ambulance.drive
# => "Room! Room! Beep! Beep!"

p ambulance.brake(100)
# => "Brake! you're going 100mph! Turn on the 3 sirens!"
