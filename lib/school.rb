class School

  attr_accessor :school

  def initialize(roster)
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if roster.has_key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
      roster
  end

  def grade(num)
    if roster.has_key?(num)
      roster[num]
    end
  end

  def sort
    sorted_hash = {}
      roster.each do |key, value|
        sorted_hash[key] = value.sort
    end
    sorted_hash
  end
end
