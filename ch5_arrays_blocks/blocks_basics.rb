# blocks - basics

def my_method(&block)
  puts "start"
  block.call("Bob", 32)
  puts "goodbye"
end

# my_method { puts "Hello!" }
#
# my_method do
#   puts "greetings!"
# end
#
# arr = [1, 2, 3]
#
# my_method do
#   i = 0
#   while i < arr.length
#     p arr[i]
#     i += 1
#   end
# end

my_method do |name, age|
  puts "My name is #{name}, I am #{age} years old."
end

def simple_method
  yield "Bob"
  yield "Hal"
end

simple_method do |name|
  puts "hello there #{name}!"
end

simple_method { |name| puts "welcome to the location #{name}."}
