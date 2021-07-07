# Instructor class:

        # initialize with a name

        # Instructor.all should return all instructors

        # Instructor#pass_student should take in a student instance and test name. If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the BoatingTest instance.

        # Instructor#fail_student should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.



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

    def pass_student(student, beef)
        if BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == beef}
        BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == beef}.test_status = "passed"
        else
            BoatingTest.new(student, beef, "passed", self)
        end   
    end
    
    def fail_student(student, beef)
        if BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == beef}
        BoatingTest.all.find {|test| test.student.first_name == student && test.test_name == beef}.test_status = "failed"
        else
            BoatingTest.new(student, beef, "failed", self)
        end   
    end


end
