# code here!
class School


  def initialize(name)
    @name = name;
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    student_array = roster[grade]
    if(student_array == nil)
      student_array = []
      roster[grade] = student_array
    end
    student_array << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |key, value|
      if(value != nil)
        roster[key] = value.sort
      end
    end
    roster.sort.to_h
  end
end
