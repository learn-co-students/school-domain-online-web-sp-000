class School
  attr_accessor :roster
  
  def initialize(name)
    @roster = {}
  end
  
  def add_student(student_name, grade)
    @roster[grade] ||= []
    @roster[grade] << student_name
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    new_hash = {}
    @roster.keys.sort.each do |grades|
      new_hash[grades] = @roster[grades].sort
    end
    new_hash
  end
end 