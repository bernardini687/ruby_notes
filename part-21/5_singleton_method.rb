class Player
  def play_game
    rand(1..100) > 50 ? "Winner!" : "Loser!"
  end
end

jim = Player.new
dwight = Player.new

p jim.play_game         # => "Loser!"
p dwight.play_game      # => "Winner!"
p jim.singleton_methods # => []

def jim.play_game
  "Winner!"
end

p jim.play_game         # => "Winner!"
p dwight.play_game      # => "Loser!"
p jim.singleton_methods # => [:play_game]
