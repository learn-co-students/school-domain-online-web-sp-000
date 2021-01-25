require 'pry' 
# School :: new has an empty roster when initialized
class School
 def initialize(name)
    @name = name 
    @roster = {} 
  end
 def roster
    @roster
  end   
#School #add_student is able to add a add_student
#School #add_student is able to add multiple students to a class (grade)
#School #add_student is able to add students to different grades 
def add_student(name,grade)
  @roster[grade] ||= [] 
  #use this or and bc there is already stuff in the array and you dont want to erase that inof 
  @roster[grade] << name
end   
 
#School #grade is able to retreive students from a grade 
def grade(student_grade)
  @roster[student_grade]
end     
#School #sort is able to sort the students 
def sort
  #iterate over the array
  # hash_return = {}
  @roster.each do |key,value|
    #inside the roster hash.each, when doing value.sort - its temporary (returns temporary value but wont modify original)
    #use value.sort! to modify the original code 
    value.sort!
  end 
  #return the sorted hash rather than unsorted hash 
  return @roster 
end 
 end 
  