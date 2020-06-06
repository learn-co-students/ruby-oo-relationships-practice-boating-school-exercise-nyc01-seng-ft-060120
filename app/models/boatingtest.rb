require_relative './student.rb'
require_relative './instructor.rb'
require 'pry'

class BoatingTest
    
    attr_reader :student, :test_name, :test_status, :instructor
   
    @@all = []

    def initialize (student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status = test_status
        @instructor = instructor
        @@all << self
    end
    
    # def student
    #     @student
    # end

    # def test_name
    #     @test_name
    # end

     # def test_status
    #     @test_status
    # end

    # def instructor
    #     @instructor
    # end

    def self.all
        @@all
    end

end

puff.pass_student("Sandy","Starfish")

binding.pry
# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)