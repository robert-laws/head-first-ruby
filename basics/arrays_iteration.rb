# iterating over arrays

# select will iterate over an array and return a new array - does not modify the original array
vals = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

new_vals = vals.select do |n|
  n > 6
end

more_vals = vals.select { |n| n > 9 }

p new_vals
p more_vals

# nested arrays
items = [["hat", "cap"], ["coat", "jacket"], ["shoes", "boots"]]

p items[0]
p items[1][0]

items.unshift(["shorts", "pants"]) # same operation as pop, but places addition at the beginning of the array
p items

p vals.to_s # returns the array as a string


# common array methods

# include? - checks to see if the argument is included in the array
things = ["coin", "bag", "donut", "ring", "pencil"]
p things.include?("bag")
p things.include?("butter")

# flatten - takes contents of nested array and creates an one-dimesnional array
p items.flatten
p items # non-destructive

# each_index - iterates through an array like each, but returns a variable value representing the index of each array element
stuff = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
stuff.each_index do |i|
  p i
end

# each_with_index - iterates through an array, returns index and value of index position
things.each_with_index do |v, i|
  puts "#{i + 1}. #{v}"
end

# sort method will sort an array
p things.sort
p things

# product method will combine two arrays
a1 = [1, 2, 3]
a2 = [9, 10]
p a1.product(a2)


# each - iterates over an array - simpler to use than for loop
info = ["idea", "concept", "issue", "something", "thought"]
info.each do |n|
  p n
end

info.each { |a| puts "#{a} - item" }

# map - works like each, but returns an array result
new_arr = []
stuff.map do |s|
  if s > 5 && s < 15
    new_arr.push(s)
  end
end

p new_arr
p stuff


b1 = ["b", "a"]
b1 = b1.product(Array(1..3))
p b1
p b1.first.delete(b1.first.last)
p b1

c1 = ["b", "a"]
c1 = b1.product([Array(1..3)])
p c1
p c1.first.delete(c1.first.last)
p c1

arr_vals = [["test", "hello", "world"],["example", "mem"]]
p arr_vals.last[0]
