# loops and iteration

# do loop
i = 0
loop do
  i += 3
  if i == 9
    next
  end
  puts i
  if i >= 10
    break
  end
end

# while loop
x = 5
while x <= 40
  puts x
  x += 10
end

# until loops
x = 10
until x <= 0
  puts x
  x -= 3
end

# for loops
x = [1,2,3,4]
for i in x do
  puts i
end

# iterators
p = 1
items = ["hat", "cap", "bat", "mat"]
items.each { |item| puts item }

items.each do |item|
  puts "#{p}. #{item}"
  p += 1
end


# recursion
def tripler(start)
  puts start
  if start < 8000
    tripler(start * 3)
  end
end

tripler(10)

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

items.each_with_index do | val, ind |
  puts "#{ind + 1}. #{val}"
end

number = 11

def reduce(num)
  num -= 1
  if num != 0
    puts num
    reduce(num)
  end
end

reduce(number)
