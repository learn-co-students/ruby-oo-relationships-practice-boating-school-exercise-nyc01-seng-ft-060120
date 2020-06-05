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

    def add_boating_test(test_name,test_status,instructor)
        BoatingTest.new(self,test_name,test_status,instructor) 
    end
    
    def self.find_student(name)
        Student.all.select do |student| 
            student.name == self 
        end 
    end 

    def grade_percentage 
        passed_test = []
        Student.all.select do |student_test| 
            if student_test.test_status == "passed" 
                passed_test << student_test 
            end  
        end
        passed_test.count
    end  

end
