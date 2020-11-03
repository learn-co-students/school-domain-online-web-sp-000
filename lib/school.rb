require 'pry'
class School

    attr_accessor :name, :student, :grade, :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
        
        
        # if roster[grade]
        #     roster[grade] << student
        # else 
        #     roster[grade] = [student]
        # end
    end

    def grade(student_grade)
        roster[student_grade]
    end

    def sort
        sorted_roster = {}
       roster.each do |grade, name|
        sorted_roster[grade] = name.sort
       end
       sorted_roster
    end

end