require 'pry'

require_relative './boatingtest.rb'
require_relative './instructor.rb'
require_relative './student.rb'

max = Student.new("Max")
liam = Instructor.new("Liam")

max.add_boating_test("Test One", "failed", liam)
max.grade_percentage
liam.pass_student(max, "Test One")
binding.pry
