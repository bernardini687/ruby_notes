# A multidimensional array is an array containing other arrays

my_cats = [["Sophie", 12, "fat"], ["Margot", 11, "crazy"], ["Leo", 9, "shy"]]

puts my_cats[1][2] # Puts my second cat's most prominent quality
# => crazy

# I want to unpack it

p my_cats.size # Make sure of how many elements it contains
# => 3

sophie, margot, leo = my_cats # Assign each element to its own variable

p sophie, margot, leo
# => ["Sophie", 12, "fat"]
# => ["Margot", 11, "crazy"]
# => ["Leo", 9, "shy"]
