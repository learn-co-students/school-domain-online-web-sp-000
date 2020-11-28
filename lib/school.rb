class School
  attr_accessor :roster, :student_name, :school_name
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
   end

   def grade(grade)
     @roster[grade]
   end

   def sort
     @roster.each { |key, value| @roster[key] = value.sort! { |x, y| x[0] <=> y[0] } }
   end

end
