class School
  attr_accessor :name, :roster

    def initialize(name)
      @name = name
      @roster = {}
    end

    def add_student(students_name, grade)
      if @roster[grade]
        @roster[grade] << students_name
      else
        @roster[grade] = [students_name]
    end
end
     def grade(grade)
       @roster[grade]
     end

     def sort
       sorted_roster = {}
       @roster.sort.each{|grade, name| sorted_roster[grade] = name.sort}
       sorted_roster
     end
   end
