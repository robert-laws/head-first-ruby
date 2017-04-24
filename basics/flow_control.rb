# flow control

# conditionals - combination of "if" statements with comparison operators (<, >, <=, >=, ==, !=, &&, ||)

word = "items"

if word == "thing"
  puts "it is a thing"
elsif word == "idea"
  puts "it is an idea"
else
  puts "not a thing or idea"
end

puts "some items" if word == "items"

if word == "thing" then puts "word is a thing" else puts "not a thing" end

puts "some more items" unless word != "items"

#------------------------------------------------#

# order of precedence - highest order to lowest

# 1. Comparison <=, <, >, >=
# 2. Equality ==. !=
# 3. Logical AND &&
# 4. Logical OR ||

x = 25
y = 10
z = 20

if x > y && y > z || z > x
  puts "met conditions"
else
  puts "conditions not met"
end

# ternary operator

res = y > x ? "y is greater than x" : "y is not greater than x"
puts res


# switch or case statement

q = 200

case q
when 60
  puts "less then 100"
when 100
  puts "equals 100"
when 200
  puts "more than 100"
else
  puts "something else"
end
