# You don't require a file, you require a feature

puts "Start"

# It's possible to omit .rb extension
require "./end"

# 'load' works everytime it's called, 'require' only once per file

# 'require' starts looking from Ruby's directory
# 'require_default' looks from current directory, like 'load'

puts "Once again!"

require_relative "end_again"
