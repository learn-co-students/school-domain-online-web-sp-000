class School 
 attr_accessor :name, :roster 
 
 def initialize(name)
   @name = name 
   @roster = {}
 end 
 
 def add_student(student, level)
   roster[level] ||= []
   roster[level] << student 
 end 

 def grade(grade) 
   roster.detect do |x, y|
   if x == grade 
     return y 
   end 
   end 
 end 
 
 def sort 
   new_hash = {}
   roster.each do |x, y|
   new_hash[x] = y.sort
 end 
  new_hash
 end 
end