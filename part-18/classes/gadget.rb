# Generally you want one file per class and filename == ClassName

class Gadget
  def initialize
    @user = "User #{rand(1..100)}"
    @key = "****"
    @serial = "#{("a".."z").to_a.sample}-#{rand(100..999)}"
  end
end

phone = Gadget.new
p phone
#<Gadget:0x007f9eee969580 @user="User 16", @key="****", @serial="o-513">

laptop = Gadget.new
p laptop
#<Gadget:0x007f9eee968bf8 @user="User 50", @key="****", @serial="v-244">
