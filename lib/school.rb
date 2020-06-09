# code here!
require 'pry'
class School
    
    
    def initialize(school)
        @school = school
        
        @roster = {}
    end
    def roster
        @roster
    end
    def add_student(student, grade)
        if @roster[grade].is_a?(Array)
            @roster[grade] << student
        else
            @roster[grade] = []
            @roster[grade] << student
        end
        
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.map do |grade, student|
            #binding.pry
            @roster[grade] = student.sort
        end
        @roster
    end
end
newS = School.new("school")
newS.add_student("Homer Simpson", 9)
newS.add_student("Bart Simpson", 9)
newS.add_student("Avi Flombaum", 10)
newS.add_student("Jeff Baird", 10)
newS.add_student("Blake Johnson", 7)
newS.add_student("Jack Bauer", 7)
newS.sort