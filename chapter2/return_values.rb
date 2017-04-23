# return values from a methods

def grade_average(total_points, number_of_exams)
  total_points / number_of_exams # implicit return value -> not using the 'return' keyword
end

score = grade_average(1200, 14)
puts score
