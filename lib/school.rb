require 'pry'
class School
    attr_writer = :roster
    def initialize(roster)
        @roster = {}
    end 

    def roster 
        @roster 
    end 

    def add_student(name, grade)
        @roster.include?(grade) ? @roster[grade] << name : @roster[grade] = [name] 
    end 

    def grade(grade)
        @roster[grade]
    end 

    def sort
        sorted = {}
        @roster.each{|grade, students| sorted[grade] = students.sort}
        sorted
    end 
    
end 