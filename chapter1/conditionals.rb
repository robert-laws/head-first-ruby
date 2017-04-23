# conditionals unless and until

number = 5

unless number == 0
  puts "number is #{number}"
end

until number == 0
  puts "number is #{number}"
  number -= 1
end


while number < 3
  puts "number is #{number}"
  number += 1
end


# Ruby is an interpreted language. You don’t have to compile Ruby code before executing it.

# You don’t need to declare variables before assigning to them. You also don’t have to specify a type.

# Ruby treats everything from a # to the end of the line as a comment—and ignores it.

# Text within quotation marks is treated as a string—a series of characters.

# If you include #{...} in a Ruby string, the expression within the braces is interpolated into the string.

# Method calls may need one or more arguments, separated by commas.

# Parentheses are optional around method arguments. Leave them off if you’re not passing any arguments.

# Use the inspect and p methods to view debug output for Ruby objects.

# You can include special characters within double-quoted strings by using escape sequences like \n and \t.

# You can use the interactive Ruby interpreter, or irb, to quickly test out the result of Ruby expressions.

# Call to_s on almost any object to convert it to a string. Call to_i on a string to convert it to an integer.

# unless is the opposite of if; its code won’t execute unless a statement is false.

# until is the opposite of while; it executes repeatedly until a condition is true.
