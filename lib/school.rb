# code here!
class School

def initialize (name)
@name = name

@roster = {}
end



def roster
  @roster
end

def add_student(students_name, grade)
if @roster.has_key?(grade) == false
@roster[grade] = []
@roster[grade] << students_name
else
  @roster[grade] << students_name

end
end

def grade(num)
return @roster[num]
end

def sort
  hash = @roster.each {|keys, ary| @roster[keys] = ary.sort}

hash
end

end
