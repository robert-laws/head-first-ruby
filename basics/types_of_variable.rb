# types of variables

# constants
# declared with all caps, can be changed, but shouldn't be
MY_APP_NAME = "Starter App"
puts MY_APP_NAME


# global
# decared with $, available throughout app - overrides scope boundaries
$main_item = "Important Item"


# class variable
# declared with two @@ signs. Created at the class level and available at the instance level
@@items = 1


# instance variables
# declared with one @ sign. Available throughout the current instance of the parent class
@information = "Something here"



# local variables
# declared by writing the variable name. Obey all scope boundaries
new_thing = "this is a new thing"
