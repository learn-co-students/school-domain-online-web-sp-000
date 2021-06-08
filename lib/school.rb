# code here!
#will do comment gods

class School

  attr_accessor :roster, :name



#on evoking .new on school, an instance of school is created with a name & empty roster
    def initialize(name)
      @name = name
      @roster = {}
    end

#pushes a students name (input) and grade (input) into the empty hash (roster) initialized above
#does this by first checking (with an if statement) if the roster already has that key, if so adds the student name to that key
#if not it first adds that key (grade) then adds the student name to the newly formatted key
    def add_student(stu_name, grade)
      if @roster.has_key?(grade)
        @roster[grade] << stu_name
      else
      @roster[grade] = []
      @roster[grade] << stu_name
    end
  end


#returns a copy of the roster at a specific key (grade value)
#i.e. names if you input the grade
  def grade(grade)
    @roster[grade]
  end


#for each element on the hash (roster), take in the key and value, navigate into the key(grade), take all of the elements(student names)
#and assign |a,b| to the those name values and compare them against each other using the sort method
  def sort
    @roster.each do |key, value|
      @roster[key] = value.sort{|a,b| a<=>b}
    end
  end
end
