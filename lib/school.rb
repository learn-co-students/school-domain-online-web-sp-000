class School

attr_reader :roster

def initialize(roster)
  roster={}
  @roster=roster
end

def add_student(name, grade)
     @roster[grade] ||= []
     @roster[grade] << name
 end

 def grade(grade)
   @grade=@roster[grade]
 end

 def sort
   @sort=@roster
   @sort.each do |k,v|
     v.sort!
 end
end

end
