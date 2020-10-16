# code here!
class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
          else
            @roster[grade] = []
            @roster[grade] << name
          end
    end

    def grade(grade_level)
        roster[grade_level]
    end

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
     end
end
    

    #def sort
    #    roster.each do |grade_level, name|
    #       name.sort
    #    end
    #end