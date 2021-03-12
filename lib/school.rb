class School
attr_reader :name, :roster 
  
  def initialize(school)
    @school = school
    @roster = {}
  end
  
  def add_student (name, grade)
    if self.roster[grade] ||= []
      self.roster[grade] << name
    end
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.each do |grade, students|
      students.sort!
  end
end
end 