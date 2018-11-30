# .fetch is more flexible than .[] in that it lets you customize the output if a key (or index in case of array) is not associated with any value

reply = "Sorry, we don't have that at the moment."
shady_listing = {molar: 9.99, arm: 12.99, brain: 2.99}

p shady_listing[:brain]
# => 2.99 (It's not a good brain...)

p shady_listing[:robotic_nostril]
# => nil

p shady_listing.fetch(:brain, reply)
# => 2.99

p shady_listing.fetch(:robotic_nostril, reply)
# => "Sorry, we don't have that at the moment."

# A few days passed and the customer returned, eager to find his robotic nostril

shady_listing[:robotic_nostril] = 49.99
shady_listing[:brain] = 1.49

p shady_listing
# => {:molar=>9.99, :arm=>12.99, :brain=>1.49, :robotic_nostril=>49.99}

p shady_listing[:robotic_nostril] # => 49.99 (There it is, quite pricey...)
p shady_listing[:brain]           # => 1.49  (No one wants that brain, uh?)

shady_listing.delete(:robotic_nostril)
shady_listing.store(:good_brain, 99.99)

p shady_listing
{:molar=>9.99, :arm=>12.99, :brain=>1.49, :good_brain=>99.99}

# The robotic nostril was gone and a better brain was found. Still a question remains open: what can you do with only one robotic nostril?
# The end
