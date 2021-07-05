class BoatingTest

    attr_accessor :student, :instructor, :status, :boating_test_name

    @@all = []

    def initialize(student, instructor, status, boating_test_name)
        @student = student
        @instructor = instructor
        @status = status
        @boating_test_name = boating_test_name

        @@all << self
    end

    def self.all
        @@all
    end

end
