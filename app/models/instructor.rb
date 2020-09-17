class Instructor
    attr_accessor :name 

    @@all = [] 
    def initialize(name) 
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def pass_student(student, test_name) 
        pass_test = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name} 
        if pass_test 
            pass_test.status = "passed" 
        else 
            BoatingTest.new(student, test_name, "passed", self) 
        end 
    end 

    def fail_student(student, test_name) 
        fail_test = BoatingTest.all.find{|test| test.student.first_name == student.first_name && test.name == test_name} 
        if fail_test 
            fail_test.status = "failed" 
        else  
            BoatingTest.new(student, test_name, "failed", self) 
        end 
    end 
end