# Student class:

        # should initialize with first_name
        
        # Student.all should return all of the student instances

        # Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

        # Student.find_student will take in a first name and output the student (Object) with that name

        # Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)



class Student

    attr_reader :first_name
    # array of all the student instances
    @@all = []
    # pass in first_name of student
    def initialize(first_name)
        @first_name = first_name
        # each time student is initialized, push into @@all array
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(beef)
        @@all.select do |student|
            student.first_name == beef
        end
    end
    
    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def grade_percentage
        # (3/9.to_f)*100 #=> 33.33...
        passed = BoatingTest.all.select {|test| test.student == self && test.test_status == "passed"}.count
        
        test_taken = BoatingTest.all.select {|test| test.student == self}.count
        
        (passed/test_taken.to_f)*100
    end


end