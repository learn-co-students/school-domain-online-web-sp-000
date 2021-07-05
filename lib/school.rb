# code here!
class School

  attr_accessor :name, :roster # getter and setter methods

  def initialize(name) # instantiate school_name and an empty hash for roster
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade) # method for student and grade
    # if grade var EQUALS (in) roster's hash key, do nothing with grade
    # OR enter grade var in roster's hash key -- a ||= b OR (a = a || 'or' enter b)
    roster[grade] ||= []
    # then, shovel student_name in as the value to corresponding key (grade) array
    # this stores the grade/key and pushes names/values into the array
    roster[grade] << student_name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
      sort_alpha = {}
      roster.collect do |grade, student_name|
        sort_alpha[grade] = student_name.sort
      end
      sort_alpha
  end

end
