# code Here
class School

attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(name, grade)
  roster[grade] ||= []
  roster[grade] << name
end

def grade(grade)
  return roster[grade]
end

def sort
  new_hash = {}
  roster.each do |first_name, last_name|
    new_hash[first_name] = last_name.sort
end
return new_hash
end
end
