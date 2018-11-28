# .key? And .value? methods test whether a key or value exists in the hash
#
daft_punk = {
  thomas_helmet: "silver",
  guymanuel_helmet: "gold"
}
#
p daft_punk.key?(:thomas_helmet)  # => true
p daft_punk.key?("thomas_helmet") # => false
p daft_punk.key?(:foo)            # => false
#
p daft_punk.value?("gold")        # => true
p daft_punk.value?("green")       # => false

# .delete the key/valye pair with the key specified for the argument
#
daft_punk[:helmet] = "blue"
p daft_punk
# => {:thomas_helmet=>"silver", :guymanuel_helmet=>"gold", :helmet=>"blue"}
#
deleted = daft_punk.delete(:helmet)
p daft_punk
# => {:thomas_helmet=>"silver", :guymanuel_helmet=>"gold"}
#
# Returning the value
p deleted # => "blue"
