# Q1 - What’s a variable?
# What’s the point of using variables? Give an example.
# A variable stores a value to reuse later. It gives context to the data as well.
name = 'James'

# Q2 - Precisely describe the following line of code using the correct vocabulary.
age = 18
# age is a variable
# 18 is the integer thats stored in that variable.
# = is the assigment

# Q3 - What’s a method? What’s the point of defining methods?
# A method is a reusable block of code that can take arguments and return a value

# Q4 - Precisely describe what happens at each line using good vocabulary. Write a ruby comment next to the line you’re explaining using the #.

# Code example given to the student:
def multiply(x, y) # defining a method "multiply" w/parameters x and y
  return x * y     # returns the product of x and y
end                # end...

puts multiply(5, 8) # calling method w/two arguments 5 & 8 and display in Terminal

# Q5 - What’s the keyword if ?
# 'If' is a conditional statement

# Give us an example of if statements, using an age variable storing a student’s age for instance.

# TODO: write some code with `if`
age = 100
if age > 99
  puts 'You are over a century old! Holy crap!'
end

# Q6 - Complete the following code to compute the exact average of students grades (using each ).

# Code example given to the student:
grades = [19, 8, 11, 15, 13]
# TODO: compute and store the result in a variable `average`
combined_grades = 0
grades.each do |grade|
  combined_grades += grade
end
average = combined_grades.fdiv(grades.count)
# average = combined_grades / grades.count.to_f

# Q7 - Define a capitalize_name method which takes first_name and last_name as parameters and returns the well-formatted fullname (with capitalized first and last names).
def capitalize_name(first_name, last_name)
  # concatenation -> all data needs to be strings
  return first_name.capitalize + ' ' + last_name.capitalize

  # interpolation -> need double quotes
  return "#{first_name.capitalize} #{last_name.capitalize}"
end

# Q8 - What’s the difference between concatenation and interpolation? Give an example.


# CRUD Array
# Q9 - Translate each line of pseudo-code into ruby.
fruits = ["banana", "peach", "watermelon", "orange"]

# Print out "peach" from the fruits array in the terminal
puts fruits[1]

# Add an "apple" to the fruits array
# fruits.push('apple')
fruits << 'apple'

# Replace "watermelon" by "pear"
fruits[2] = 'pear'

# Delete "orange"
# fruits.delete_at(3)
# fruits.delete_at(-1)
fruits.delete('orange')

# Q10 - Translate each line of pseudo-code into ruby. (HASH Crud)

city = { name: "Paris", population: 2000000 }

# Print out the name of the city
puts city[:name]

# Add the Eiffel Tower to city with the `:monument` key
city[:monument] = 'Eiffel Tower'

# Update the population to 2000001
city[:population] = 2_000_001

# What will the following code return?
city[:mayor]
nil

# Q11 - Use the map iterator to convert the variable students, an array of arrays, into an array of hashes.Those hashes should have two keys: :name and :age. What is the type of those keys?
# They are symbols

# Code example given to the student:
students = [ [ "john", 28 ], [ "mary", 25 ], [ "paul", 21 ] ]
# TODO: Convert the array of arrays into an array of hashes.
students.map do |student|
  {
    name: student.first,
    age: student.last
  }
end

# students.map do |name, age|
#   {
#     name: name,
#     age: age
#   }
# end
