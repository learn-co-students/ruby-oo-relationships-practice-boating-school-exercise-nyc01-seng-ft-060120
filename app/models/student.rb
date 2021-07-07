class Student
  @@all = []
  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end
  
  def find_student(first_name)
    Student.all.find{ |student| student.first_name == first_name }
  end

  def grade_percentage
    tests = BoatingTest.all.select do |test|
      test.student == self
    end

    tests_passed = tests.select do |test|
      test.test_status == "passed"
    end

    

    grade = tests_passed.length*100/tests.length
  end

end
