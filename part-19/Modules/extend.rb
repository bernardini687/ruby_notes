module Announcer
  def who_am_i
    "The name of this class is... '#{self}'!"
  end
end

class Dragon
  include Announcer
end

class Koala
  extend Announcer
end

p Dragon.new.who_am_i
# => "The name of this class is... '#<Dragon:0x007fa20400d810>'!"

p Koala.who_am_i
# => "The name of this class is... 'Koala'!"
