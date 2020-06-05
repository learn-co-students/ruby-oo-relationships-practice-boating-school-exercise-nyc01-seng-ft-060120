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

    def pass_student(student, boating_test_name)
        testtopass = BoatingTest.all.select do |boating_test|
        if testtopass
            testtopass(status) = "passed"
        else
            BoatingTest.new(student, boating_test_name, "passed", self)
        end
    end

    def fail_student(student, boating_test_name)
        testtofail = BoatingTest.all.select do |boating_test|
            if testtofail
                testtofail(status) = "failed"
            else
                BoatingTest.new(student, boating_test_name, "failed", self)
            end
        end
    end

end
