# Generally you want one file per class and filename == ClassName

class Gadget
  def initialize # This is a private method
    @user = "User #{rand(1..100)}"
    @key = "****"
    @serial = "#{("a".."z").to_a.sample}-#{rand(100..999)}"
  end

  def user
    @user
  end

  def user= new_user
    @user = new_user
  end

  def serial
    @serial
  end

  def key= new_key
    @key = new_key
  end

  def info # This is a public instance method
    "Gadget #{@serial} has the username: #{@user}.\nYes, it's a #{self.class} of ID #{self.object_id}"
    # self will refer to the object on which .info will be called upon
  end

  def to_s # This ovverides the default .to_s
    "Miao"
  end
end

phone = Gadget.new
laptop = Gadget.new

puts phone.info
# => Gadget h-632 has the username: User 37.
#    Yes, it's a Gadget of ID 70282518413860

puts laptop.info
# => Gadget v-278 has the username: User 48.
#    Yes, it's a Gadget of ID 70347467202080

# .info is a method applicable to objects made from the gadget class

p phone.methods - Object.methods # => [:info]

# By default, .to_s is a method inherited from a superclass
# If you were to define a .to_s in the current class, calling .to_s will evoke that very method

p phone.to_s # => "Miao"
# => "#<Gadget:0x007fc7be968ad8>" (This would be the default .to_s)

p phone.user    # => "User 22"
p laptop.serial # => "b-386"

phone.user=("freya93") # Use setter method .user= to change instance variable

p phone.user # => "freya93"

phone.user = "tac2k13" # Shorthand syntax

p phone.user # => "tac2k13"
