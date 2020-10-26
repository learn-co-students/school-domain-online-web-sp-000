# code here!
class School
  attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(name, grade)
      if roster.has_key?(grade)
        roster[grade] << name
      else
      roster[grade] = [name]
    end
  end

  def grade(grade_level)
  roster[grade_level]
  end

  def sort
    names_sorted={}
    roster.each do |grade, names|
      names_sorted[grade]=names.sort
    end
    names_sorted
  end

end
