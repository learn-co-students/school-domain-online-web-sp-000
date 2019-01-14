require 'pry'  ## require pry outside class and calling binding.pry inside works

class School
  
   attr_accessor :name, :roster ## sets setter and getter methods, still not fluent in following the logic and flow, when not present nothing works
  
  def initialize(name)  ## when new instance is called, the instance is passed with the name and given an empty roster hash 
    @name = name
    @roster = {}
  end 
  
  def add_student(student_name, student_grade)  ## method that adds key-value, student_grade and student_name to the roster hash.  Compiles @roster for                                                    school
  
    if !@roster.include?(student_grade)         ## checks @roster hash for existence of student_grade key 
      @roster[student_grade] = []               ## if student_grade doesn't exist adds student_grade key with empty value/student_name array 
      @roster[student_grade] << student_name    ## pairs the student_name value to the student_grade key inside the roster hash 
      binding.pry                               ## binding.pry intercepts method here 
    else                                        ## if student_grade key already exists
      @roster[student_grade] << student_name    ## pairs the student_name value to the student_grade key inside the roster hash
    end 
  end
  
  def grade(grade)  ## grade method accepts the grade and returns a complete roster for that grade
    @roster[grade]  ## returns a school instance's student value array for the grade key passed to it  
  end 

  def sort                                        ## sort method sorts the student value array alphabetically a->z and returns the sorted hash 
    @roster.each do |grade_hash, students_array|  ## each iterator passes the grade key and student value to the code below
      @roster[grade_hash] = students_array.sort   ## the alphabetically sorted student array values are added to the pair grade keys creating a new student                                               value sorted @roster hash 
    end
  end
end




