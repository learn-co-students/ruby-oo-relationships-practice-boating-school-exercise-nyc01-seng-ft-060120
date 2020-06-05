class Student
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(student, test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end
  
  def find_student(first_name)
    Student.all.find{ |student| student.first_name == first_name }
  end

  def grade_percentage
    
  end

end
