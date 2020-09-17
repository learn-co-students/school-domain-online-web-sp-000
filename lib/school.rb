class School
  attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

def add_student(name, grade)
  if @roster.include?(grade)
  @roster[grade] << name
else
  @roster[grade] = [name]
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
