class School
attr_accessor :name, :roster, :student, :grade

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student, grade)
  if roster.include?(grade) == true
    roster[grade] << student
  else
    roster[grade] = [student]
  end
end

def grade(grade)
  return roster[grade]
end
def sort
  roster.each do |grade, name|
    roster[grade] = name.sort
  end
end
end
