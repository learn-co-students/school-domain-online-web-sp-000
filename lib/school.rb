# code here!

class school
 
 def initalize(school_name)
   @school_name = school_name
   @roster = {} 
end 

def roster 
  @roster 
end 

def add_student(name, grade)
  @student_name = name 
  @grade = grade 
  if@roster.include?(grade) == false 
    @roster[grade] = []
  end 
  @roster[grade] << name 
end 

def sort 
  @roster.each do |grade, name|
    @roster[grade] = name.sort 
  end
end 
end
 
 
 
 
 
 
 
 
 
 
  
end 