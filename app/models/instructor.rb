class Instructor

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student,test_name)
        if BoatingTest.all.find{ |boat_test| }
    end


end
