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

    def add_boating_test(hash) # test_name: string, status: string, instructor: object
        BoatingTest.new(student: self, name: hash[:test_name], status: hash[:status], instructor: hash[:instructor])
    end

    def self.find_student(first_name)
        self.all.find { |student| student.first_name == first_name}
    end

    def grade_percentage
        myTests = BoatingTest.all.select do |test|
            test.student == self
        end

        passedTests = myTests.select do |tests|
            tests.status == "passed"
        end

        (passedTests.length / myTests.length) * 100.to_f

    end


end
