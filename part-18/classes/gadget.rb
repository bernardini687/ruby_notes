class Gadget
  # attr_accessor :user
  attr_writer :key, :user
  attr_reader :serial, :user

  def initialize(user, key)
    @user = user
    @key = key
    @serial = "#{("a".."z").to_a.sample}-#{rand(100..999)}"
  end
end

g1 = Gadget.new("tac", "password")
p g1.user   # => "tac"
p g1.serial # => "l-144"

g1.key = "qwerty"
g1.user = "sophie"

p g1.user   # => "sophie"

g2 = Gadget.new("ping", "1234")
g3 = Gadget.new("freya", "asdf")
