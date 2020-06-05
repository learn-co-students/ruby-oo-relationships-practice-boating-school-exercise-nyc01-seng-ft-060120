class BoatingTest
  @@all = []
  
  def initialize(student, test_name, test_status, instructor)
    @@all << self
  end

  def self.all
    @@all
  end


end
