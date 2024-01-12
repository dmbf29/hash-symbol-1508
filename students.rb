students = ['noah', 'justin', 'nina', 'hellen']

# students.each_with_index do |student, index|
#   puts "#{student} is #{student_ages[index]} years old"
# end

students_age = {
  "noah" => 24,
  "justin" => 25,
  "nina" => 22,
  "hellen" => 20
}
# p students_age
# p students_age['noah']['address']

# names = { 'yoshio' => 22, 'leo' => 12}

# Hash CRUD
# Create
# hash[key] = value
# p students_age
students_age['glenn'] = 27
# p students_age

# Read
# hash[key] # will return the value
students_age['hellen'] # 20
students_age[0] # nil
students_age.length
students_age.count
students_age.size
students_age.key?('hellen')
students_age.value?(20)
students_age.keys
students_age.values

# Update
# hash[key] = new_value
students_age['glenn'] = 28

# Delete
# hash.delete('key')
students_age.delete('glenn')

students_age = {
  "Noah Taiga" => 24,
  "justin" => 25,
  "nina" => 22,
  "hellen" => 20
}
# when you iterate over a hash, you have a key AND a value
students_age.each do |name, age|
  "#{name} is #{age} years old"
end

# students_age.each_with_index do |(name, age), index|
#   puts "#{index + 1} - #{name} - #{age}"
# end





# Array CRUD
students = ['noah', 'justin', 'nina', 'hellen']

# Create
students << 'leo'
# Read
students[0]
# Update
students[0] = 'Leo'
# Delete
students.delete('Leo')
students.delete_at(0)



# def fullname(first_name, middle_name, last_name)
#   return "#{first_name} #{middle_name} #{last_name}"
# end

# p fullname('chin', 'dan')



def fullname(age, name_hash)
  "#{name_hash[:first_name]} #{name_hash[:middle_name]} #{name_hash[:last_name]}"
end

p fullname(
  25,
  middle_name: 'something',
  last_name: 'chin',
  first_name: 'dan'
)
