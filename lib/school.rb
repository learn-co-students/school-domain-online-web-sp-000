# code here!
class School

attr_reader :roster

def initialize(roster)
  @roster = {}
end

def add_student(name, grade)
  @roster[grade] = [] if !@roster.has_key?(grade)
  @roster[grade] << name
end

def grade(grade)
  @roster[grade]
end

def sort
  @roster.each do |grade, names|
    @roster[grade] = names.sort
  end
end

end
