# ruby methods

# method without parameters
def show_name
  puts "Bob Cobb"
end

# method with parameters
def show_new_name(first, last)
  puts "Hello, #{first} #{last}."
end

# default parameters
def greeting(name="Anonymous")
  puts name + ", says howdy!"
end

# method calls
show_name
show_new_name("hal", "hope")
greeting
greeting("Kal Kool")


# mutating the caller
def basic_method(num)
  num = 10
end

x = 5
basic_method(x)
puts x # x value is not changed - scope visibility still outside of method call

# some methods will mutate the caller, even from within other methods
array = [1,2,3,4]
def mutate(arr)
  arr.pop # the pop method will mutate the class, resulting in a permanent change to the local variable
end
p array
mutate(array)
p array


# method chaining
# sequencing methods using a . to connect them together
def output_sentence(words)
  puts "hello #{words}"
end

output_sentence("hello".length.to_s)
