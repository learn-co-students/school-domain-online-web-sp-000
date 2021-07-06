class School

attr_reader :name, :roster

def initialize(name)
  @name = name 
  @roster = {}
end 

def grade(grade_value)
  @roster[grade_value]
end


def sort
sorted_array_roster = @roster.sort
sorted_array_roster.collect do |grades_with_names|
  grades_with_names.collect do |element|
    if element.kind_of?(Array)
      element = element.sort!
    end 
  end 
end
sorted_roster = sorted_array_roster.to_h
end 

def add_student(student_name, grade)
  if @roster.include?(grade)
  else 
    @roster[grade] = []
  end 
  @roster[grade] << student_name
end 
end 