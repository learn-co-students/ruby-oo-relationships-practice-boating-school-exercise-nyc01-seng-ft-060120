class BoatingTest
    attr_accessor :student, :name, :status, :instructor
    @@all = []
    def initialize(hash)
        @student = hash[:student]
        @name = hash[:name]
        @status = hash[:status]
        @instructor = hash[:instructor]
        @@all << self
    end
    def self.all
        @@all
    end
end

