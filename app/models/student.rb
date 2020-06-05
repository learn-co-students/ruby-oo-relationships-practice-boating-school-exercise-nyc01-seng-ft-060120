require 'pry'

class Student
    attr_reader :first_name
    @@all = []

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
      end

    def self.find_student(first_name) 
        self.all.find {|name| name == first_name }
    end

    def student_grad_percentage
        passed_tests = [].to_f
        total_tests = [].to_f
        percent_passed = (passed_tests/total_tests) * 100
    end
      

end

tests = [
    [Joe Object, test_name, status, instructor]
    [Farah Object, test_name, status, instructor]
    [Sam Object, test_name, status, instructor]
]

joe = Student.new("Joe")
farah = Student.new("Farah")
sam = Student.new("Sam")

binding.pry