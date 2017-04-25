# arrays

# array data can be of any type

items = [2, "stuff", 4.75, "things"]

puts items.first
puts items.last
puts items[2]
puts items[0]

# modifying arrays

stuff = ["hat", "cap", "bat", "map", "tie"]

# array.pop - removes the last item and returns it, modifies the original array
puts stuff.pop
print stuff

# print "\n"
# 40.times { print "-" }
# print "\n"

# array.push adds an item to the array, modifying the array in the process
print stuff.push("pie")
print stuff << "mat" # the shovel operator - does same thing as push


# map and collect iterate over an array
vals = [2, 5, 12, 25, 38, 49]
print vals.map { |n| n**2 }
print vals # map does not modify the caller - the original array values stay the same

# delete_at & delete will remove values from the array - using an index value for delete_at and the value of the item to remove for delete
print vals.delete_at(4) # returns the value deleted
print stuff.delete("cap") # returns the value deleted

# uniq - returns values - removes duplicates
numbers = [1, 2, 3, 4, 4, 4, 5, 6, 6, 6, 1, 2, 3, 12]
print numbers.uniq # does not modify the original array
numbers.uniq! # adding the ! will modify the original array
print numbers
