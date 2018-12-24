# Generally you want one file per class and filename == ClassName

class Gadget
  def initialize # This is a private method
    @user = "User #{rand(1..100)}"
    @key = "****"
    @serial = "#{("a".."z").to_a.sample}-#{rand(100..999)}"
  end

  def info # This is a public instance method
    "Gadget #{@serial} has the username: #{@user}."
  end
end

phone = Gadget.new
laptop = Gadget.new

puts phone.info  # => Gadget h-632 has the username: User 37.
puts laptop.info # => Gadget v-278 has the username: User 48.

# .info is a method applicable to objects made from the gadget class

p phone.methods - Object.methods # => [:info]
