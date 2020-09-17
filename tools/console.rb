require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
oliver = Student.new("Oliver Queen") 
barry = Student.new("Barry Allen") 

slade = Instructor.new("Slade Wilson") 
eobard = Instructor.new("Eobard Thawne") 

no_crashing = oliver.add_boating_test("Don't Crash 101", "pending", slade) 
power_steering_failure = olver.add_boating_test("Power Steering 202", "failed", slade) 
power_steering_pass = barry.add_boating_test("Power Steering 201", "passed", eobard) 
binding.pry
0 #leave this here to ensure binding.pry isn't the last line