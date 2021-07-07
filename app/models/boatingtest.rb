require_relative './student.rb'
require_relative './instructor.rb'
require 'pry'

# BoatingTest class:

        # should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

        # BoatingTest.all returns an array of all boating tests


        class BoatingTest

            attr_reader :student, :test_name, :instructor
            attr_accessor :test_status
        
            @@all = []
        
            def initialize(student, test_name, test_status, instructor)
                @student = student
                @test_name = test_name
                @test_status = test_status
                @instructor= instructor
                @@all << self
            end
        
            def self.all
                @@all
            end
        end
        

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)


        binding.pry