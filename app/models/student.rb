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

        def add_boating_test(name, status, instructor)
            BoatingTest.new(self, name, status, instructor)
        end

        def self.find_stuent(student_first_name)
            self.all.find {|student| student.first_name == student_first_name}
        end

        def grade_percentage
        end

end
