require 'pry'


class Instructor
    attr_reader :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def pass_student(student, test_name)
    BoatingTest.all.select do |test|
        if test.student == student && test.test_name == test_name 
            test.status = "passed"
        else
            BoatingTest.new(student, test_name, "passed", self)
        end
    end
end

def fail_student(student, test_name)
    BoatingTest.all.select do |test|
        if test.student == student && test.test_name == test_name 
            test.status = "failed"
        else
           BoatingTest.new(student, test_name, "failed", self)
        end
    end
end

end


