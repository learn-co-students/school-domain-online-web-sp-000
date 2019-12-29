# School class

class School

  attr_accessor :roster

  # The roster should be an empty hash upon initialization
  # but will be built out to contain keys of grade levels.
  # The value of each key will be an array of student names.
  def initialize(roster)
    @roster = {}
  end

  # grade is key; name is value in array
  # adding multiple students:


  def add_student(name, grade)
    # roster = {grade => []}
    # If the grade key exists, just add student's name to the existing array
    if roster.include?(grade)
      roster[grade] << name
    # if grade key doesn't exist, create grade key w/ empty array and add student's name to the array
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    return roster[grade]
  end

  # You should be able to get a sorted list of all the students where the strings
  # in the student arrays are sorted alphabetically.
  def sort
    alpha_roster = {}
    roster.each do |key, value|
      alpha_roster[key] = value.sort
    end
    alpha_roster
  end

end
