require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

students = [
  "rudy",
  "berel",
  "frankie",
  "vandad",
  "flunkie"
]

instructors = [
  "tashawn",
  "eric kim, he him",
  "justin",
  "alicia"
]
students.each { |name| Student.new(name)}
instructors.each { |name| Instructor.new(name)}




binding.pry
0 #leave this here to ensure binding.pry isn't the last line

