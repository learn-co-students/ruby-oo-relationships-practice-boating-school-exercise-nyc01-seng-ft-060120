require 'pry'
class Student
attr_reader :first_name

    @@all = []
def initialize(first_name)
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
    Student.all.find do |student|
        student.first_name == first_name
    end
end

def all_tests
    BoatingTest.all.select do |test|
        test.student == self
    end
end

def passed_tests
    self.all_tests.select do |test|
        test.status == "passed"
    end
end

def grade_percentage
passed_tests.length.to_f / all_tests.length.to_f

end
end
