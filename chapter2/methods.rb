# methods - definition

def say_hi
  print "Greetings!"
end

def print_sum(num1, num2)
  sum = num1 + num2
  print sum
end

print_sum(4,12)
say_hi

# Optional parameters
def get_items(clothes = "hat")
  puts "I am wearing #{clothes}"
end

get_items
get_items("pants")


def car(color, wheels = 4)
  puts "You selected a #{color} car with #{wheels} wheels"
end

car("red")
car("blue", 3)
