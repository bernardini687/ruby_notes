# A method can define an argument that anticipate a Proc

def talk_about(name, &proc)
  puts "Things you need to know about #{name}:"
  proc.call(name) # Also 'proc.(name)' would work
end

good_things = Proc.new do |name|
   puts "#{name} likes cats."
   puts "That would suffice."
end

bad_things = Proc.new do |name|
  puts "#{name} dislikes cats."
  puts "Send him to Belize!"
end

talk_about("Oscar", &good_things)
# => Things you need to know about Oscar:
#    Oscar likes cats.
#    That would suffice.

talk_about("None", &bad_things)
# => Things you need to know about None:
#    None dislikes cats.
#    Send him to Belize!

# The same above but with a yield
def talk(name)
  puts "Things you need to know about #{name}:"
  yield name
end

talk("This") do |name|
  puts "#{name} is a less versatile approach."
  puts "Send it to Belize!"
end
# => Things you need to know about This:
#    This is a less versatile approach.
#    Send it to Belize!
