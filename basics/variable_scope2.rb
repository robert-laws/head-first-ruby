# variable scope - part 2

# method definition - using the def keyword
def say_hello(name)
  puts "Hello #{name}!"
end

# method invocation - when the method is called
say_hello("Bob")

people = ["Hal", "Kal", "Jim"]

people.each do |name|
  say_hello(name)
end

person = "val"

def bigger(str)
  str.upcase!
end

bigger(person)
puts person

def add_name(arr, name)
  arr = arr + [name]
  p arr
end

names = ['bob', 'kim']
add_name(names, 'jim')
p names
