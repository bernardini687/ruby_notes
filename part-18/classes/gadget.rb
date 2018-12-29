class Gadget
  # attr_accessor :user
  attr_writer :key, :user
  attr_reader :serial, :user

  def initialize
    @user = "User #{rand(1..100)}"
    @key = "****"
    @serial = "#{("a".."z").to_a.sample}-#{rand(100..999)}"
  end
end

phone = Gadget.new
p phone.user   # => "User 89"
p phone.serial # => "n-194"
