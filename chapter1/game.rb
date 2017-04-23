# # Ruby Game
# # Developed by RL
#
# # Greets the player
# puts "Hello, welcome to the game!"
#
# # asks for the player's name & says hello
# puts "What is your name?"
# input = gets.chomp
# puts "hello, #{input}!"
#
# # random numbers - generate a random number
# puts "The game is about guessing a random number between 1 and 100"
# puts "Can you guess the number?"
# target_number = rand(100) + 1
#
# # traack number of guesses remaining
# number_of_guesses = 0
# remaining_guesses = 10 - number_of_guesses
# puts "There are #{remaining_guesses} guesses left."
# 
# # retrieve the guess from the user
# puts "Make a guess: "
# guess = gets.to_i
# guessed_it = false #track if the number has been guessed
#
# # conditional behavior - check if the guess is high, low, or matching the number
# if guess < target_number
#   puts "your guess is too low"
# elsif guess > target_number
#   puts "your guess is too high"
# else
#   puts "Good work, #{input}!"
#   puts "You guessed the number in #{number_of_guesses}!"
#   guessed_it = true
# end
#
# # unless - conditional testing
# unless guessed_it
#   puts "Sorry, you didn't get it. The number is #{target_number}"
# end
#
# # loops - while loop
# while number_of_guesses < 10 && guessed_it == false
#   number_of_guesses += 1
# end
#

puts "Hello, welcome to the game!"
puts "What is your name?"
input = gets.chomp
puts "hello, #{input}!"

target_number = rand(100) + 1
number_of_guesses = 0
remaining_guesses = 10 - number_of_guesses
guessed_it = false

puts "The game is about guessing a random number between 1 and 100"
puts "Can you guess the number?"


while number_of_guesses < 10 && guessed_it == false
  puts "Make a guess: "
  guess = gets.to_i
  number_of_guesses += 1

  if guess < target_number
    puts "your guess is too low"
  elsif guess > target_number
    puts "your guess is too high"
  else
    puts "Good work, #{input}!"
    puts "You guessed the number, #{target_number} in #{number_of_guesses} guesses!"
    guessed_it = true
  end
end

unless guessed_it
  puts "Sorry, you didn't get it. The number is #{target_number}"
end
