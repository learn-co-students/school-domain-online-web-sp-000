# code here!
class School
attr_accessor :name, :roster
roster = {}

def initialize(name)
@name = name
@roster = {}
end

def add_student(name, grade)
  if roster.has_key?(grade)
  roster[grade] << name 
else
  roster[grade] = []
  roster[grade] << name
end
end

def grade(number)
  return roster[number]
end

def sort 
  sorted_roster = {}
      roster.each do  |grade, students|
        sorted_roster[grade] = students.sort
    end
   return sorted_roster
  
 
end
end

