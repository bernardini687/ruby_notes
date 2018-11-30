# .flatten returns a one-dimensional array from any multi-dimensional array. There's also .flatten!

my_cats = [
  ["Sophie", 11, "fat"],
  ["Margot", 11, "crazy"],
  ["Leo", 9, "shy"]
]

old, middle, young = my_cats

p old, middle, young
# => ["Sophie", 11, "fat"]
#    ["Margot", 11, "crazy"]
#    ["Leo", 9, "shy"]

# With variables you can unpack it but what if you want one simple array?
p my_cats.flatten
# => ["Sophie", 11, "fat", "Margot", 11, "crazy", "Leo", 9, "shy"]

# .zip returns a multi-dimensional array, associating elements from different arrays by their common index number

my_cats_copy = old.zip(middle, young)

p my_cats_copy
# => [["Sophie", "Margot", "Leo"], [11, 11, 9], ["fat", "crazy", "shy"]]

def custom_zip(arr1, arr2)
  result, i = [], 0
  while i < arr1.length
    result << [arr1[i], arr2[i]]
    i += 1
  end
  result
end

p custom_zip(old, middle)
# => [["Sophie", "Margot"], [11, 11], ["fat", "crazy"]]

p custom_zip([1, 2, 3], ["a"]) # => [[1, "a"], [2, nil], [3, nil]]
p [1, 2, 3].zip(["a"])         # => [[1, "a"], [2, nil], [3, nil]]
