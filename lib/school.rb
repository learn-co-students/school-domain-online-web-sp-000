# code here!
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :roster, :grade
    
    
    
    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << name
    end 

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.collect do |grade, students| 
            students.sort!
        end 
        @roster.to_h
    end 
end
