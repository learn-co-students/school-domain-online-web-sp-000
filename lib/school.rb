class School
  attr_accessor :name, :roster
  


  def initialize(name)
    @name = name
    @roster = {}
  end

  def grade(get_student_grade)
    roster[get_student_grade]
  end

  def add_student(student_name, z)
    roster[z] || roster[z] = []
    roster[z] << student_name
  end



  # this method should arrange the students in each grade by alphabetical order
  
=begin
  def sort
    students_sorted_by_grade_hash = {}
    roster.each do |the_key_which_is_grade, the_array_of_students|
      students_sorted_by_grade_hash[the_key_which_is_grade] = the_array_of_students.sort
    end
    students_sorted_by_grade_hash
  end
  
  def sort
    r1 = roster.sort
    r2 = r1.map {|item| item[1].sort}
    #students_alphabetized = r1.map {|grade, students| {grade => students.sort} }
    r1.merge(r2)
  end
  
=end
  def sort
    r1 = roster.sort
    students_alphabetized = r1.map {|grade, students| {grade => students.sort} }
    students_alphabetized.reduce({}) { |memo, obj| memo.merge(obj) }
  end
  
end


