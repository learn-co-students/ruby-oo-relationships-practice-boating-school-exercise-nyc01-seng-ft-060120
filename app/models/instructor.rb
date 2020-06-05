class Instructor
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select do |boating_test|
      if boating_test.instructor == self
        boating_test
      end
    end
  end

  def pass_student(student, test_name)
    test = boating_tests.find do |boating_test|
      boating_test.student == student && boating_test.test_name == test_name
    end
    if test == nil
      test = BoatingTest.new(student, test_name, test_status="passed", self)
    else
      test.test_status = "passed"
    end
    test
  end

end
