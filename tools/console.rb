require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new("Jack")
student2 = Student.new("Stephen")
instructor1 = Instructor.new("Bob")
midterm = BoatingTest.new(student1, "midterm", "passed", instructor1)
midterm2 = BoatingTest.new(student1, "midterm2", "failed", instructor1)
final = BoatingTest.new(student2, "final", "failed", instructor1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line

