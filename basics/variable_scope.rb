# variable scope

# defined by blocks in ruby. Block is a piece of code following a method invocation, usually with {} or do/end

# inner scope can access variable initialized outside, but not vice-versa

item = 4

2.times do |n|
  item = 1
end

puts item # value of item is 1

#==============================================#

a = 5

3.times do |n|
  a = 3
  b = 4
end

puts a
# puts b # can't 'see' b because it's initialized outside the top-level scope

c = 12

def get_item
  c = 10 # initialized within a method - not accessible outside scope
end

puts c
c = get_item
puts c


arr = [1,2,3]

for i in arr do
  a = 4
end

puts a
