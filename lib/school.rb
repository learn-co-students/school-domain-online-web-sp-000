class School
  def initialize(school_name)
    @school = school_name
    @roster = {}
  end
  def roster
    @roster
  end
  
  def add_student(name, grade)
    if @roster[grade]
    @roster[grade]<< name
  else
    @roster[grade] = []
    @roster[grade]<< name
  end
  roster
end

def grade(number)
  @grade = number
  return @roster[number]
end

def sort
  @roster.each do |grade, name|
    @roster[grade] = name.sort
  end
end
end
