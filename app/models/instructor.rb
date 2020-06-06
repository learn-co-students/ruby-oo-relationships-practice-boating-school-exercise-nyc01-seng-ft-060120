require 'pry'
class Instructor
    attr_reader :name
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    # def name
    #     @name
    # end

    # def student
    #     @student
    # end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
       if BoatingTest.all.find {|boat_test| boat_test.student == student && boat_test.test_name == test_name}
             boat_test.test_status = "pass"
        else 
            BoatingTest.new(student,test_name,"pass",self)
        end
    end

    def fail_student(student,test_name)
        if BoatingTest.all.find {|boat_test| boat_test.student == student && boat_test.test_name == test_name}
              boat_test.test_status = "fail"
         else 
             BoatingTest.new(student,test_name,"fail",self)
         end
     end


end

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

binding.pry
