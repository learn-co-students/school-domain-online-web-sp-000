# code here!
class School

def initialize(name, roster = {})
  @school_name = name
  @roster = roster
end
def roster
  @roster
end
def roster=(roster)
  @roster=roster
end
def add_student(name, grade)
   if @roster[grade] != nil
     @roster[grade] << name
  else
    @roster[grade]=[]
    @roster[grade]<<name
  end
  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
    roster
  end
end
end
