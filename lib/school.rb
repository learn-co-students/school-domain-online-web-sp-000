# code here
class School
attr_accessor :name, :roster
def initialize(name)
  @name = name
  @roster = {}
end
def add_student(students_name, grade)
  roster[grade] ||=[]
  roster[grade] << students_name
end
def grade(students_grade)
  roster[students_grade]
end
def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
  sorted
end
end 
