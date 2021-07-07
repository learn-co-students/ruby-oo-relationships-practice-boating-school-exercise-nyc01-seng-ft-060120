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
  
  def pass_student(hash) # student: object, test_name: "someone"
    test = BoatingTest.all.find do |boating_test| 
      boating_test.name == hash[:test_name] && boating_test.student == hash[:student]
    end
    if test
      test.status = "passed"
    else
      BoatingTest.new(student: hash[:student], name: hash[:test_name], instructor: self, status: "passed")
    end
  end

  def fail_student(hash) # student: object, test_name: "someone"
    test = BoatingTest.all.find do |boating_test| 
      boating_test.name == hash[:test_name] && boating_test.student == hash[:student]
    end
    if test
      test.status = "failed"
    else
      BoatingTest.new(student: hash[:student], name: hash[:test_name], instructor: self, status: "failed")
    end
  end
  

end