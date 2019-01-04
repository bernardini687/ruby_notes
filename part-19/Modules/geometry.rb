require "./square.rb"
require "./rectangle"     # Ruby already assumes it's a .rb file
require_relative "circle" # Relative to current folder

p Square.area 12          # => 144
p Rectangle.area(9, 14)   # => 126
p Circle.area 1           # => 3.14159
