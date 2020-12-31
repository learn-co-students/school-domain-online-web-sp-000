require "pry"

class School
  def initialize(name)
    @name= name
    @roster= {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if @roster == {}
      @roster[grade] = []
      @roster[grade] << "#{student_name}"
    elsif @roster.keys.include? (grade)
      @roster[grade] << "#{student_name}"
    else
      @roster[grade]= []
      @roster[grade] << "#{student_name}"
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_grades= @roster.keys.sort
    new_roster={}
    sorted_grades.each do |element|
      new_roster[element]= @roster[element].sort
    end
    new_roster
  end

end
